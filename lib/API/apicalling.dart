import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:machine_test/Utils/Constant/constant.dart';
import 'package:machine_test/model/assigndriver_model.dart';
import 'package:machine_test/model/buslist_model.dart';
import 'package:machine_test/model/driverlist_model.dart';
import 'package:machine_test/model/drivermanagement_model.dart';

class Services {
  static Future<BusListModel?> getbuslist() async {
    var result;
    final resp = await http.get(
        Uri.parse(
            "${Constant.baseURL + Constant.buslisturl + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        });

    if (resp.statusCode == 200) {
      result = BusListModel.fromJson(jsonDecode(resp.body));
      log("${result.busList}");
      return BusListModel.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<DriverList?> getdriverslist() async {
    final resp = await http.get(
        Uri.parse(
            "${Constant.baseURL + Constant.driverslist + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        });

    if (resp.statusCode == 200) {
      return DriverList.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<AssignDriverModel?> assigndriver() async {
    final resp = await http.patch(
        Uri.parse(
            "${Constant.baseURL + Constant.driverslist + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        },
        body: {
          "bus_id": 1,
          "driver_id": 70
        });

    if (resp.statusCode == 200) {
      return AssignDriverModel.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<DriverManagementModel?> drivermanagementpost(
      String name, String license_no) async {
    final resp = await http.post(
        Uri.parse(
            "${Constant.baseURL + Constant.driverslist + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        },
        body: {
          "name": name,
          "mobile": 70,
          "license_no": license_no
        });

    if (resp.statusCode == 200) {
      return DriverManagementModel.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<DriverManagementModel?> drivermanagementdelete() async {
    final resp = await http.delete(
        Uri.parse(
            "${Constant.baseURL + Constant.driverslist + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        },
        body: {
          "driver_id": 1,
        });

    if (resp.statusCode == 200) {
      return DriverManagementModel.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
