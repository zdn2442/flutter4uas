import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../config/colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      padding: EdgeInsets.fromLTRB(0, 80, 0, 10),
      // color: Colors.black,
      child: Column(
        children: [
          Container(
            child: Text(
              'C.RENT',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 50, color: baseColor),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('Welcome Back 👋'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('to '),
                    Text(
                      'C.RENT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: baseColor),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
