// ignore: non_constant_identifier_names
import 'dart:convert';

// ignore: non_constant_identifier_names
BusListModel BusListModelFromJson(String str) =>
    BusListModel.fromJson(json.decode(str));
// ignore: non_constant_identifier_names
String BusListModelToJson(BusListModel data) => json.encode(data.toJson());

class BusListModel {
  bool? status;
  List<BusList>? busList;

  BusListModel({this.status, this.busList});

  BusListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['bus_list'] != null) {
      busList = <BusList>[];
      json['bus_list'].forEach((v) {
        busList!.add(new BusList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.busList != null) {
      data['bus_list'] = this.busList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BusList {
  int? id;
  String? name;
  String? image;
  String? seatCount;
  String? type;
  int? driver;

  BusList(
      {this.id, this.name, this.image, this.seatCount, this.type, this.driver});

  BusList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    seatCount = json['seat_count'];
    type = json['type'];
    driver = json['driver'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['seat_count'] = this.seatCount;
    data['type'] = this.type;
    data['driver'] = this.driver;
    return data;
  }
}
