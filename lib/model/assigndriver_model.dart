import 'dart:convert';

AssignDriverModel AssignDriverModelFromJson(String str) =>
    AssignDriverModel.fromJson(json.decode(str));
// ignore: non_constant_identifier_names
String AssignDriverModelToJson(AssignDriverModel data) =>
    json.encode(data.toJson());

class AssignDriverModel {
  bool? status;
  String? message;

  AssignDriverModel({this.status, this.message});

  AssignDriverModel.fromJson(Map<String, dynamic> json) {
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
