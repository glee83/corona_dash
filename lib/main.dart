import 'package:corona_dash/routes/route.dart';
import 'package:corona_dash/routes/route_names.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    route: AppRoute(),
  ));
}

class MyApp extends StatelessWidget {
  AppRoute route;
  MyApp({Key? key, required this.route}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: Routing.home,
      onGenerateRoute: route.onGenerateRoute,
    );
  }
}
