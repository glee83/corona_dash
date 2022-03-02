import 'package:corona_dash/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_card extends StatelessWidget {
  const Custom_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 270.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: kLightDartColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(children: [
            Positioned(
              top: 20.0,
              left: 30.0,
              child: Text(
                'coronavirus'.toUpperCase(),
                style: GoogleFonts.poppins(
                  color: klightColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 40.0,
              left: 30.0,
              child: Text(
                'cases'.toUpperCase(),
                style: GoogleFonts.poppins(
                  color: klightColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 60.0,
              left: 30.0,
              child: Container(
                height: 3.0,
                width: 30.0,
                decoration: const BoxDecoration(color: kPrimaryColor),
              ),
            ),
            Positioned(
              bottom: 20.0,
              left: 30.0,
              child: Text(
                '1 838 458',
                style: GoogleFonts.lato(
                  color: kTextColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
