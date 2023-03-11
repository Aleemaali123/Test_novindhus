import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/Utils/Route/route_manager.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Moovebe',
      debugShowCheckedModeBanner: false,

      initialRoute: RouteManager().routes[0].name,
      getPages: RouteManager().routes,
      // home: SplashScreen(),
    );
  }
}
