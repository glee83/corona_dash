import 'package:corona_dash/constant/constant.dart';
import 'package:corona_dash/widgets/custom_card.dart';
import 'package:corona_dash/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/custom_header.dart';
import '../widgets/custom_list.dart';
import 'dart:math' as math;

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDartColor,
      drawer: const Custom_drawer(),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Header(
                leadingIcon: const Icon(Icons.menu),
                reloadIcon: const Icon(Icons.replay),
                child: Text(''),
                secTitle: 'Corona Dash',
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200.0,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                // padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: klightColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    const Custom_card(),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            const Positioned(
                              // top: 4.0,
                              child: FaIcon(
                                FontAwesomeIcons.slidersH,
                                color: kTextColor,
                              ),
                            ),
                            Positioned(
                              // bottom: 0,
                              child: Transform.rotate(
                                angle: math.pi / -2,
                                child: Text(
                                  'Graphs'.toUpperCase(),
                                  style: GoogleFonts.poppins(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: kLightDartColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Custom_List(),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.info),
                        title: Text(
                          'Asymptomatic'.toUpperCase(),
                          style: GoogleFonts.poppins(
                            color: kTextColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          '1 770',
                          style: GoogleFonts.lato(
                            color: kPrimaryColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.info),
                        title: Text(
                          'Symptomatic'.toUpperCase(),
                          style: GoogleFonts.poppins(
                            color: kTextColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          '370',
                          style: GoogleFonts.lato(
                            color: kPrimaryColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
