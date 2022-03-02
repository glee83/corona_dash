import 'package:corona_dash/routes/route_names.dart';
import 'package:corona_dash/screen/dashboard.dart';
import 'package:corona_dash/screen/graph.dart';
import 'package:corona_dash/screen/home.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routing.dash:
        return MaterialPageRoute(builder: (_) => const Dashboard());

      case Routing.chart:
        return MaterialPageRoute(builder: (_) => const GraphPage());

      default:
        throw 'route not found';
    }
  }
}
