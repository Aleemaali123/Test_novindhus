import 'package:get_storage/get_storage.dart';

class Constant {
  static const baseURL = "http://flutter.noviindus.co.in/api/";
  static String loginurl = "LoginApi";
  static const loginkeyusername = "username";
  static const loginkeypassword = "password";
  static const buslisturl = "BusListApi/";
  static const driverslist = "DriverApi/";
}

class saveget {
  static saveapikey(String apikey) {
    final box = GetStorage();
    box.write("apikey", apikey);
  }

  static getapikeyl() {
    final box = GetStorage();
    return box.read("apikey") ?? true;
  }

  static saveurlid(String urlid) {
    final box = GetStorage();
    box.write("urlid", urlid);
  }

  static geturlid() {
    final box = GetStorage();
    return box.read("urlid") ?? true;
  }

  static savebusid(String busid) {
    final box = GetStorage();
    box.write("busid", busid);
  }

  static getbusid() {
    final box = GetStorage();
    return box.read("busid") ?? true;
  }

  static savedriverid(String driverid) {
    final box = GetStorage();
    box.write("driverid", driverid);
  }

  static getdriverid() {
    final box = GetStorage();
    return box.read("driverid") ?? true;
  }
}
