
import 'dart:convert';

DriverManagementModel DriverManagementModelFromJson(String str) =>
    DriverManagementModel.fromJson(json.decode(str));
// ignore: non_constant_identifier_names
String DriverManagementModelToJson(DriverManagementModel data) =>
    json.encode(data.toJson());


class DriverManagementModel {
  bool? status;
  String? message;

  DriverManagementModel({this.status, this.message});

  DriverManagementModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}
