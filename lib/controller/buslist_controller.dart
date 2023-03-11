import 'dart:developer';

import 'package:get/get.dart';
import 'package:machine_test/API/apicalling.dart';

class Controller extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    buses();
  }

  var busLists = [].obs;
  var driverLists = [].obs;
  var assigndrivers = "".obs;

  void buses() async {
    var images = await Services.getbuslist();
    log("${images!}");
    busLists.value = images.busList!;
    log("${busLists.value}");
  }

  void drivers() async {
    var driverslist = await Services.getdriverslist();
    driverLists.value = driverslist as List;
  }

  void assigndriverss() async {
    var assign = await Services.assigndriver();
    assigndrivers.value = "${assign!.message}";
  }
}
