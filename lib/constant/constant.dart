import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/chart_model.dart';

// app custom colors

const kPrimaryColor = Color(0xffed3946);
const kTextColor = Color(0xffffffff);
const klightColor = Color(0xff9e9999);
const kDartColor = Color(0xff252325);
const kLightDartColor = Color(0xff4f4a4f);
const lightDefaultColor = Color(0xfff5f5f5);

// list of images for carousel slider

final List<String> images = [
  'images/pexels-anna.jpg',
  'images/polina.jpg',
  'images/pexels-polina.jpg',
  'images/tima.jpg',
];

// smooth page indicator

Widget indicator(int activeIndex) => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: images.length,
      effect: const JumpingDotEffect(
        dotColor: kDartColor,
        dotHeight: 10.0,
        dotWidth: 10.0,
        activeDotColor: kTextColor,
      ),
    );

// chart demo data

List<ChartModel> data = [
  ChartModel(month: 'Jan', sales: 0),
  ChartModel(month: 'Feb', sales: 500),
  ChartModel(month: 'Mar', sales: 100),
  ChartModel(month: 'Apri', sales: 1600),
  ChartModel(month: 'May', sales: 2000),
];
