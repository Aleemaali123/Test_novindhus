import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/Utils/Route/route_manager.dart';

final mainlogo = Image.asset("assets/logo.png");
final commonchairred = Icon(
  Icons.chair,
  color: commoncolor,
  size: 30,
);
final spacebetweenchair = SizedBox(
  height: 10,
);
final commoncolor = Color.fromRGBO(252, 21, 59, 1);
Widget getstartedbtn() => Padding(
      padding: const EdgeInsets.only(
        left: 30,
      ),
      child: Container(
        height: 58,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(255, 255, 255, 1)),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, elevation: 0),
            onPressed: () {
              Get.toNamed(RouteManager.login);
            },
            child: Text("Get Started",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: commoncolor))),
      ),
    );
homepageappbar() => AppBar(
    elevation: 0,
    backgroundColor: Color.fromRGBO(43, 43, 43, 1),
    toolbarHeight: 119,
    title: Image.asset(
      "assets/logo.png",
      scale: 1.5,
    ),
    centerTitle: true,
    leading: Icon(
      Icons.abc,
      color: Colors.transparent,
    ));

Widget commonredchair() => Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        children: [
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
        ],
      ),
    );

commonappbar(String txt) => AppBar(
      elevation: 0,
      leadingWidth: 70,
      toolbarHeight: 119,
      centerTitle: true,
      title: Text(
        txt,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
    );
