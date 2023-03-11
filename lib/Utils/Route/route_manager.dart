import 'package:get/get.dart';
import 'package:machine_test/model/driverlist_model.dart';
import 'package:machine_test/view/add_driver_screen.dart';
import 'package:machine_test/view/bus_1x3_seats_screen.dart';
import 'package:machine_test/view/bus_2x2_seats_screen.dart';
import 'package:machine_test/view/driverslist_page.dart';
import 'package:machine_test/view/home_screen.dart';
import 'package:machine_test/view/login_screen.dart';
import 'package:machine_test/view/splash_screen.dart';

class RouteManager {
  static const String splashScreen = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String bus1x3seats = '/bus1x3seats';
  static const String bus2x2seat = '/bus2x2seat';
  static const String addDriver = '/addDriver';
  static const String driver = '/driver';

  List<GetPage> _routes = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: home,
      page: () => HomePage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: bus1x3seats,
      page: () => Bus1x3seatsPage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: bus2x2seat,
      page: () => Bus2x2seatsPage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: addDriver,
      page: () => AddDriverPage(),
      transition: Transition.cupertino,
    ),
  GetPage(
      name: driver,
      page: () => DriversList(),
      transition: Transition.cupertino,
    ),
  ];


  get routes => _routes;
}
