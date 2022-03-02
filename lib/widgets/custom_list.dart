import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant/constant.dart';
import '../routes/route_names.dart';

class Custom_List extends StatelessWidget {
  const Custom_List({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, int index) {
          if (index == 0) {
            return const SizedBox(width: 10.0);
          }
          return Row(
            children: [
              Container(
                width: 120.0,
                height: 200.0,
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 2.0,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.heartbeat,
                        // Icons.headphones,
                        color: kTextColor,
                      ),
                      trailing: Icon(Icons.more_vert),
                      // iconColor: kTextColor,
                    ),
                    Column(
                      children: [
                        Text(
                          'Deaths'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 223, 214, 214),
                          ),
                        ),
                        const Text(
                          '113 329',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 120.0,
                height: 200.0,
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 3.0,
                ),
                decoration: BoxDecoration(
                  color: kTextColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.stethoscope,
                        // Icons.health_and_safety,
                        color: kPrimaryColor,
                      ),
                      trailing: Icon(Icons.more_vert),
                      // iconColor: kTextColor,
                    ),
                    Column(
                      children: [
                        Text(
                          'recovered'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 223, 214, 214),
                          ),
                        ),
                        const Text(
                          '421 767',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: kDartColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(Routing.chart);
                },
                child: Container(
                  width: 120.0,
                  height: 200.0,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 5.0,
                  ),
                  decoration: BoxDecoration(
                    color: kTextColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.chartLine,
                          // Icons.show_chart,
                          // size: 50.0,
                          color: kPrimaryColor,
                        ),
                        trailing: Icon(Icons.more_vert),
                        // iconColor: kTextColor,
                      ),
                      Column(
                        children: [
                          Text(
                            'Deaths'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 223, 214, 214),
                            ),
                          ),
                          const Text(
                            '115 329',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: kDartColor,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
