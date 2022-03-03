import 'package:corona_dash/constant/constant.dart';
import 'package:corona_dash/model/chart_model.dart';
import 'package:corona_dash/routes/route_names.dart';
import 'package:corona_dash/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/custom_drawer.dart';

class GraphPage extends StatelessWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kTextColor,
      drawer: const Custom_drawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: lightDefaultColor,
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              // background: Image(
              //   // image: AssetImage('images/world_map.png'),
              //   fit: BoxFit.cover,
              // ),
              title: Stack(
                children: [
                  Positioned(
                    top: 130.0,
                    left: 40,
                    child: Row(
                      children: [
                        Container(
                          height: 25.0,
                          width: 50.0,
                          // margin: const EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            color: kDartColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Liner'.toUpperCase(),
                            style: GoogleFonts.poppins(
                              color: kTextColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Logarithmic'.toUpperCase(),
                          style: GoogleFonts.poppins(
                            color: klightColor,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 10.0,
                      left: 20.0,
                      // width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Global'.toUpperCase(),
                                style: GoogleFonts.poppins(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Russia'.toUpperCase(),
                                style: GoogleFonts.poppins(
                                  color: kLightDartColor,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 40.0,
                          ),
                          Container(
                            width: 35.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                              color: kTextColor,
                              borderRadius: BorderRadius.circular(50.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: klightColor,
                                  offset: Offset.zero,
                                  blurRadius: 0.3,
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.replay,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
              centerTitle: true,
            ),
            leading: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.bars,
                    color: kDartColor,
                  ),
                );
              },
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(Routing.user);
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage('images/girl.jpg'),
                ),
              ),

              // child: Image(
              //   image: AssetImage('images/girl.jpg'),
              //   fit: BoxFit.cover,
              // ),
              // )
            ],

            // flexibleSpace: ee,
          ),
          buildImages()
        ],
      ),
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Column(
          children: [
            // Header(
            //   leadingIcon: const Icon(
            //     Icons.menu,
            //     color: kDartColor,

            //   ),
            //   reloadIcon: const Icon(Icons.replay),
            //   secTitle: 'Logarithmic',
            //   child: Container(
            //     child: Row(children: [
            //       TextButton(
            //         onPressed: () {},
            //         child: Text(
            //           'Liner'.toUpperCase(),
            //           style: GoogleFonts.lato(
            //             color: kTextColor,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       )
            //     ]),
            //   ),
            // ),
            SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              legend: Legend(
                isVisible: true,
              ),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<ChartModel, String>>[
                SplineSeries<ChartModel, String>(
                  dataSource: data,
                  splineType: SplineType.clamped,
                  color: kPrimaryColor,
                  xValueMapper: (ChartModel chartModel, _) => chartModel.month,
                  yValueMapper: (ChartModel chartModel, _) => chartModel.sales,
                  dataLabelSettings: const DataLabelSettings(isVisible: false),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              height: 165.9,
              decoration: const BoxDecoration(
                color: kDartColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Symptoms'.toUpperCase(),
                        style: GoogleFonts.poppins(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 25.0,
                        height: 25.0,
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: kPrimaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.info,
                            color: kTextColor,
                            size: 15.0,
                          ),
                        ),
                        // child: Icon(Icons.info_sharp),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kPrimaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: Text(
                        'Symptomatic'.toUpperCase(),
                        style: GoogleFonts.poppins(
                          color: kPrimaryColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

class buildContent extends StatelessWidget {
  const buildContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header(
        //   leadingIcon: const Icon(
        //     Icons.menu,
        //     color: kDartColor,

        //   ),
        //   reloadIcon: const Icon(Icons.replay),
        //   secTitle: 'Logarithmic',
        //   child: Container(
        //     child: Row(children: [
        //       TextButton(
        //         onPressed: () {},
        //         child: Text(
        //           'Liner'.toUpperCase(),
        //           style: GoogleFonts.lato(
        //             color: kTextColor,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       )
        //     ]),
        //   ),
        // ),
        SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          legend: Legend(
            isVisible: true,
          ),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<ChartModel, String>>[
            SplineSeries<ChartModel, String>(
              dataSource: data,
              splineType: SplineType.clamped,
              color: kPrimaryColor,
              xValueMapper: (ChartModel chartModel, _) => chartModel.month,
              yValueMapper: (ChartModel chartModel, _) => chartModel.sales,
              dataLabelSettings: const DataLabelSettings(isVisible: false),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 30.0,
          ),
          height: 165.9,
          decoration: const BoxDecoration(
            color: kDartColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Symptoms'.toUpperCase(),
                    style: GoogleFonts.poppins(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 25.0,
                    height: 25.0,
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.info,
                        color: kTextColor,
                        size: 15.0,
                      ),
                    ),
                    // child: Icon(Icons.info_sharp),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    'Symptomatic'.toUpperCase(),
                    style: GoogleFonts.poppins(
                      color: kPrimaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
