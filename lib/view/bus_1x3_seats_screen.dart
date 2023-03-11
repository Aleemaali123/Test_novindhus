import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:machine_test/Utils/Route/route_manager.dart';
import 'package:machine_test/model/driverlist_model.dart';
import 'package:machine_test/view/components/components.dart';

class Bus1x3seatsPage extends StatelessWidget {
  const Bus1x3seatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonappbar("KSRTC Swift Scania P-series"),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Get.toNamed(RouteManager.driver),
              child: Container(
                height: 116,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(43, 43, 43, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 22, right: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 23),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rohit sharma",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26),
                            ),
                            Text(
                              "License no: PJ5159616155",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Image.asset('assets/driver.png')
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      commonredchair(),
                    ],
                  ),
                  Row(
                    children: [
                      commonredchair(),
                      SizedBox(
                        width: 10,
                      ),
                      commonredchair(),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 25,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.chair,
                              color: Color.fromRGBO(43, 43, 43, 1),
                              size: 30,
                            ),
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
                            spacebetweenchair,
                            commonchairred,
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
