import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/constant.dart';

class Header extends StatelessWidget {
  String triallingImage;

  String secTitle;
  String priTitle;
  var leadingIcon;
  var reloadIcon;
  String country;
  Widget child;

  Header({
    Key? key,
    required this.leadingIcon,
    required this.reloadIcon,
    required this.secTitle,
    this.triallingImage = 'images/girl.jpg',
    this.country = 'Russia',
    this.priTitle = 'Global',
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        width: double.infinity,
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(
          // color: Color.fromARGB(255, 34, 33, 33),
          image: DecorationImage(
            image: AssetImage(
              'images/world_mag_rem.png',
            ),
            colorFilter: ColorFilter.mode(kDartColor, BlendMode.color),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: ListTile(
                leading: Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: kTextColor,
                      ),
                    );
                  },
                ),
                trailing: CircleAvatar(
                  child: Container(
                    // width: 30.0,
                    // height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage(triallingImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 100.0,
              top: 50.0,
              child: Text(
                'Corona Dash',
                style: GoogleFonts.poppins(
                  color: kTextColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
                bottom: 20.0,
                left: 50.0,
                // width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          priTitle.toUpperCase(),
                          style: GoogleFonts.poppins(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          country.toUpperCase(),
                          style: GoogleFonts.poppins(
                            color: kLightDartColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 70.0,
                    ),
                    Container(
                      width: 35.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        color: kTextColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Icon(
                        Icons.replay,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
