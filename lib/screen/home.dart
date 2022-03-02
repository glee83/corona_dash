import 'package:corona_dash/constant/constant.dart';
import 'package:corona_dash/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider.builder(
        options: CarouselOptions(
          height: 800.0,
          initialPage: 0,
          viewportFraction: 1,
          autoPlay: true,
          pageSnapping: true,
          pauseAutoPlayOnTouch: true,
          // autoPlayInterval: const Duration(seconds: 3),
          onPageChanged: (index, reason) {
            setState(() => activeIndex = index);
          },
        ),
        itemCount: images.length,
        itemBuilder: (context, int index, realIndex) {
          final image = images[index];

          return imageContainer(image, index);
        },
      ),
    );
  }

  Widget imageContainer(String imageName, int index) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          // color: kPrimaryColor,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imageName),
            colorFilter: const ColorFilter.mode(
              kPrimaryColor,
              BlendMode.color,
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 50.0,
              left: 30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: kTextColor,
                  ),
                  const SizedBox(
                    width: 230.0,
                  ),
                  Text(
                    'Skip'.toUpperCase(),
                    style: GoogleFonts.poppins(
                      color: kTextColor,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 150.0,
              left: 130.0,
              child: Column(
                children: [
                  Text(
                    'Covid-19'.toUpperCase(),
                    style: GoogleFonts.poppins(
                      color: kTextColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'Coronavirus'.toUpperCase(),
                        style: GoogleFonts.poppins(
                          color: kTextColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'pandemic'.toUpperCase(),
                        style: GoogleFonts.poppins(
                          color: kTextColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 150,
              left: 150.0,
              child: indicator(activeIndex),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                decoration: BoxDecoration(
                  color: kTextColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Corona virus'.toUpperCase(),
                              style: GoogleFonts.poppins(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                              ),
                            ),
                            Text(
                              'infection'.toUpperCase(),
                              style: GoogleFonts.poppins(
                                color: kPrimaryColor,
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'World Wide Data',
                          style: GoogleFonts.poppins(
                            color: klightColor,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Routing.dash);
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: kTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
