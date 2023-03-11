import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/API/apicalling.dart';
import 'package:machine_test/Utils/Route/route_manager.dart';
import 'package:machine_test/controller/buslist_controller.dart';
import 'package:machine_test/view/bus_1x3_seats_screen.dart';
import 'package:machine_test/view/components/components.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    controller.buses();
    return Scaffold(
      appBar: homepageappbar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 176,
                  width: 158,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(252, 21, 59, 10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bus",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                        Text(
                          "Manage your Bus",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 13),
                          child: Image.asset(
                            "assets/mmmm.png",
                            scale: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 176,
                  width: 158,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(43, 43, 43, 1)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Driver",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                        Text(
                          "Manage your Driver",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            "assets/driver.png",
                            scale: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              "21 Buses Found",
              style: TextStyle(
                  color: Color.fromRGBO(107, 107, 107, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
            SizedBox(
              height: 13,
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Get.toNamed(RouteManager.bus2x2seat);
                        },
                        leading: Container(
                          color: Color.fromRGBO(243, 243, 243, 1),
                          height: 73,
                          width: 79,
                          child: Image.asset("assets/image 3.png"),
                        ),
                        title: Text(
                          "${controller.busLists[index].name} \nSwift Scania P-series",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                        trailing: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: commoncolor),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0),
                              onPressed: () {
                                Get.toNamed(RouteManager.bus1x3seats);
                              },
                              child: Text("Manage",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color:
                                          Color.fromRGBO(255, 255, 255, 1)))),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 13,
                        ),
                    itemCount: controller.busLists.length))
          ],
        ),
      ),
    );
  }
}
