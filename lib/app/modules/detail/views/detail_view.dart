import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';

import '../../../../config/colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: tinggi * 0.64,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bgDetail2.png'),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                Container(
                  // width: Get.width,
                  // height: Get.height,
                  padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 15,
                        child: InkWell(
                          onTap: () => Get.toNamed(Routes.HOME),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                          ),
                        ),
                      ),
                      Container(
                          child: Text(
                        'Virgin Mojito',
                        style: TextStyle(
                            // color: drinkColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 25),
                      )),
                      Container(
                        width: 35,
                        height: 35,
                        child: Iconify(
                          Ion.android_favorite_outline,
                          // color: Colors.white,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                  child: Text(
                    'A Mojito without alcohol, its combination of sweet and citrusy flavors makes it the summers go to.',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 450,
                      // color: Colors.black,
                      padding: EdgeInsets.fromLTRB(30, 0, 15, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: 100, top: 20),
                                    // color: Colors.red,
                                    child: Text(
                                      'Time',
                                      style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold,
                                          color: timeDetail,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.black,
                                    margin: EdgeInsets.only(right: 30),
                                    child: Text(
                                      '25 min',
                                      style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold,
                                          color: timeDetail,
                                          fontSize: 40),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 60, top: 20),
                                    // color: Colors.red,
                                    child: Text(
                                      'Difficulty',
                                      style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold,
                                          color: difficultyDetail,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.black,
                                    child: Text(
                                      'Medium',
                                      style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold,
                                          color: difficultyDetail,
                                          fontSize: 40),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 60, top: 20),
                                    // color: Colors.red,
                                    child: Text(
                                      'Category',
                                      style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold,
                                          color: categoryDetail,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.black,
                                    margin: EdgeInsets.only(right: 45),
                                    child: Text(
                                      'Sweet',
                                      style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold,
                                          color: categoryDetail,
                                          fontSize: 40),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 80, top: 20),
                                    // color: Colors.red,
                                    child: Text(
                                      'Serves',
                                      style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold,
                                          color: serveDetail,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 130),
                                    // color: Colors.black,
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold,
                                          color: serveDetail,
                                          fontSize: 40),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 270,
                      height: 270,
                      decoration: BoxDecoration(
                        color: searchColor,
                        borderRadius: BorderRadius.circular(200)
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20),
                      child: Text(
                        "Ingredients",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: seeAll
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: seeAll,
                        size: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Ingredient()
          )
        ],
      ),
    );
  }
}


Widget Ingredient() {
  return Container(
    child: Wrap(
      alignment: WrapAlignment.center,
      spacing: 20.0,
      runSpacing: 15.0,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            color: bgIngredient,
            border: Border.all(color: borderIngredient, width: 1),
            borderRadius: BorderRadius.circular(100)
          ),
          child: Column(
            children: [
              Container(
                width: 55,
                height: 55,
                color: searchColor,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      '8',
                      style: TextStyle(
                        color: seeAll,
                        fontSize: 45,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            'Mint',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                            ),
                        ),
                        Text(
                          'Leaves',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),
                          )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            color: bgIngredient,
            border: Border.all(color: borderIngredient, width: 1),
            borderRadius: BorderRadius.circular(100)
          ),
          child: Column(
            children: [
              Container(
                width: 55,
                height: 55,
                color: searchColor,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      '8',
                      style: TextStyle(
                        color: seeAll,
                        fontSize: 45,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            'Mint',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                            ),
                        ),
                        Text(
                          'Leaves',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),
                          )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            color: bgIngredient,
            border: Border.all(color: borderIngredient, width: 1),
            borderRadius: BorderRadius.circular(100)
          ),
          child: Column(
            children: [
              Container(
                width: 55,
                height: 55,
                color: searchColor,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      '8',
                      style: TextStyle(
                        color: seeAll,
                        fontSize: 45,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            'Mint',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                            ),
                        ),
                        Text(
                          'Leaves',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),
                          )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            color: bgIngredient,
            border: Border.all(color: borderIngredient, width: 1),
            borderRadius: BorderRadius.circular(100)
          ),
          child: Column(
            children: [
              Container(
                width: 55,
                height: 55,
                color: searchColor,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      '8',
                      style: TextStyle(
                        color: seeAll,
                        fontSize: 45,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            'Mint',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                            ),
                        ),
                        Text(
                          'Leaves',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),
                          )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            color: bgIngredient,
            border: Border.all(color: borderIngredient, width: 1),
            borderRadius: BorderRadius.circular(100)
          ),
          child: Column(
            children: [
              Container(
                width: 55,
                height: 55,
                color: searchColor,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      '8',
                      style: TextStyle(
                        color: seeAll,
                        fontSize: 45,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            'Mint',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                            ),
                        ),
                        Text(
                          'Leaves',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),
                          )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            color: bgIngredient,
            border: Border.all(color: borderIngredient, width: 1),
            borderRadius: BorderRadius.circular(100)
          ),
          child: Column(
            children: [
              Container(
                width: 55,
                height: 55,
                color: searchColor,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      '8',
                      style: TextStyle(
                        color: seeAll,
                        fontSize: 45,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            'Mint',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                            ),
                        ),
                        Text(
                          'Leaves',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),
                          )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}