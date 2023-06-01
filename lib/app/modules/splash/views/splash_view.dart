import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../config/colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: splashTheme,
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 50, 0, 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "It's time for a",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 34),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Drink",
                          style: TextStyle(
                              fontSize: 55,
                              color: drinkColor,
                              fontFamily: 'Satisfy-Regular'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 420,
                          height: 50,
                          child: Text(
                            "The one-stop to find amazing drink mixes for any occassion.",
                            style: TextStyle(
                                fontFamily: 'Raleway-VariableFont_wght',
                                color: abuPudar,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Get.toNamed(Routes.HOME),
                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            padding: EdgeInsets.symmetric(
                                horizontal: 42, vertical: 17),
                            width: 200,
                            height: 60,
                            decoration: BoxDecoration(
                                color: buttonOnboard,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Get Started >",
                              style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 126),
                // alignment: Alignment.centerRight,
                width: Get.width,
                height: 600,
                // color: Colors.black,
                child: Image.asset(
                  'assets/images/gabungan2.png',
                  fit: BoxFit.none,
                ),
              )
            ],
          ),
        ));
  }
}
