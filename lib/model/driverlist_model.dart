
import 'dart:convert';

DriverListModel DriverListModelFromJson(String str) =>
    DriverListModel.fromJson(json.decode(str));
// ignore: non_constant_identifier_names
String DriverListModelToJson(DriverListModel data) => json.encode(data.toJson());

class DriverListModel {
  bool? status;
  List<DriverList>? driverList;

  DriverListModel({this.status, this.driverList});

  DriverListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['driver_list'] != null) {
      driverList = <DriverList>[];
      json['driver_list'].forEach((v) {
        driverList!.add(new DriverList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.driverList != null) {
      data['driver_list'] = this.driverList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DriverList {
  int? id;
  String? name;
  String? mobile;
  String? licenseNo;

  DriverList({this.id, this.name, this.mobile, this.licenseNo});

  DriverList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    licenseNo = json['license_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['license_no'] = this.licenseNo;
    return data;
  }
}
