import 'dart:convert';

// ignore: non_constant_identifier_names
LoginModel LoginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));
// ignore: non_constant_identifier_names
String LoginModelToJson(LoginModel data) => json.encode(data.toJson());


class LoginModel {
  
  bool? status;
  String? name;
  String? refresh;
  String? access;
  String? message;
  String? urlId;

  LoginModel(
      {this.status,
      this.name,
      this.refresh,
      this.access,
      this.message,
      this.urlId});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    name = json['name'];
    refresh = json['refresh'];
    access = json['access'];
    message = json['message'];
    urlId = json['url_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['name'] = this.name;
    data['refresh'] = this.refresh;
    data['access'] = this.access;
    data['message'] = this.message;
    data['url_id'] = this.urlId;
    return data;
  }
}
