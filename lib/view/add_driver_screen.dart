import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:machine_test/API/apicalling.dart';
import 'package:machine_test/view/components/components.dart';

class AddDriverPage extends StatelessWidget {
  AddDriverPage({super.key});
  final _formkey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final lisencecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonappbar("Add Driver"),
      body: Padding(
        padding: const EdgeInsets.only(left: 29, right: 29, top: 39),
        child: Form(
          key: _formkey,
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(42, 42, 42, 0.1),
              ),
              child: TextField(
                  controller: namecontroller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromRGBO(112, 112, 112, 1)),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  )),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(42, 42, 42, 0.1),
              ),
              child: TextField(
                  controller: lisencecontroller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Enter License Number",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromRGBO(112, 112, 112, 1)),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  )),
            ),
          ]),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Container(
          height: 58,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: commoncolor),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, elevation: 0),
              onPressed: () async {
                FocusScope.of(context).unfocus();

                if (_formkey.currentState!.validate()) {
                  final res = await Services.drivermanagementpost(
                      namecontroller.text, lisencecontroller.text);
                  if (res?.status == true) {
                    Services.drivermanagementpost(
                            namecontroller.text, lisencecontroller.text)
                        .then((result) {
                      Get.back();
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${res?.message}")));

                    res?.message;
                  }
                }
              },
              child: Text("Save",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 255, 1)))),
        ),
      ),
    );
  }
}
