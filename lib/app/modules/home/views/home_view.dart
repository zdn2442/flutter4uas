import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/cil.dart';
import 'package:iconify_flutter/icons/icon_park_outline.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/mdi.dart';

import 'package:get/get.dart';
import 'package:uas4/config/colors.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 30,
                  height: 15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 15,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 15,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                      ),
                      Text(
                        'O',
                        style: TextStyle(
                            color: drinkColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Text(
                    controller.learn.value,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 29,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Material(
                // color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                elevation: 1.0,
                shadowColor: searchColor,
                child: TextFormField(
                  style: TextStyle(
                      fontFamily: 'Raleway-VariableFont_wght',
                      color: searchColor,
                      fontSize: 20),
                  decoration: InputDecoration(
                      hintText: "Search",
                      suffixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Catagories',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 75,
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(color: seeAllBorder, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 11),
                  child: Text('See All',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: seeAll,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                CardCategories(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Recent Mixes',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 75,
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(color: seeAllBorder, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 11),
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: seeAll,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                //         Container(
                //     child: CarouselSlider(
                //   options: CarouselOptions(
                //     aspectRatio: 2.0,
                //     enlargeCenterPage: true,
                //     enableInfiniteScroll: false,
                //     initialPage: 2,
                //     autoPlay: false,
                //   ),
                //   items: List.generate(controller.dataDrink.length, (index) {
                //     return CardMixes(
                //       nama: (controller.dataDrink[index].data as Map<String, dynamic>)["nama"],
                //       waktu: (controller.dataDrink[index].data as Map<String, dynamic>)["waktu"],
                //       kesulitan: (controller.dataDrink[index].data as Map<String, dynamic>)["kesulitan"],
                //       like: (controller.dataDrink[index].data as Map<String, dynamic>)["like"],
                //       image: (controller.dataDrink[index].data as Map<String, dynamic>)["gambar"],
                //     );
                //   })
                // ))
                CardMixes()
              ],
            )
          ],
        ),
      ),
    )));
  }
}

Widget CardMixes({nama, waktu, kesulitan, like, image}) {
  return InkWell(
    onTap: () => Get.toNamed(Routes.DETAIL),
    child: Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 330,
                height: 420,
                decoration: BoxDecoration(
                    color: seeAll, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 150,
                                    margin: EdgeInsets.only(left: 20),
                                    // color: Colors.red,
                                    height: 100,
                                    padding: EdgeInsets.only(top: 20, right: 30),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Blue\n',
                                      style: TextStyle(
                                          fontFamily: 'Anton',
                                          color: Colors.white,
                                          fontSize: 60),
                                          ),
                                          TextSpan(
                                            text: 'Moon',
                                      style: TextStyle(
                                          fontFamily: 'Anton',
                                          color: moon,
                                          fontSize: 60),
                                          ),
                                        ]
                                      )
                                    )
                                  )
                                ],
                              ),
                              // Row(
                              //   children: [
                              //     Container(
                              //       margin: EdgeInsets.only(
                              //         left: 25,
                              //       ),
                              //       height: 100,
                              //       // padding: EdgeInsets.only(bottom: 20),
                              //       // color: Colors.black,
                              //       child: Text(
                              //         'Moon',
                              //         style: TextStyle(
                              //             fontFamily: 'Anton',
                              //             color: moon,
                              //             fontSize: 60),
                              //       ),
                              //     )
                              //   ],
                              // )
                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: searchColor,
                              // image: DecorationImage(
                              //   image: image,
                              //   fit: BoxFit.fill
                              // )
                            ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Row(
                            verticalDirection: VerticalDirection.down,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 5, bottom: 20),
                                child: Iconify(
                                  Cil.drink,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'Mocktail',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      fontFamily: 'Raleway'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20, right: 5, bottom: 20),
                                    child: Iconify(
                                      Mdi.clock_time_three_outline,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      'waktu',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          fontFamily: 'Raleway'),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20, bottom: 20),
                                child: Text(
                                  'kesulitan',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      fontFamily: 'Raleway'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20, right: 5),
                                    child: Iconify(
                                      Ion.android_favorite_outline,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'like',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          fontFamily: 'Raleway'),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                  height: 37,
                                  width: 130,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 4),
                                  decoration: BoxDecoration(
                                      color: bgStar,
                                      borderRadius: BorderRadius.circular(20)),
                                  margin: EdgeInsets.only(right: 20),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_sharp,
                                        color: star,
                                        size: 30,
                                      ),
                                      Icon(
                                        Icons.star_sharp,
                                        color: star,
                                        size: 30,
                                      ),
                                      Icon(
                                        Icons.star_sharp,
                                        color: star,
                                        size: 30,
                                      ),
                                      Icon(
                                        Icons.star_sharp,
                                        color: star,
                                        size: 30,
                                      ),
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 30,
            width: 270,
            decoration: BoxDecoration(
              color: layer1,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
            ),
          ),
          Container(
            height: 30,
            width: 190,
            decoration: BoxDecoration(
              color: layer2,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
            ),
          )
        ],
      ),
    ),
  );
}

Widget CardCategories() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    width: 420,
    height: 180,
    // color: Colors.red,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 120,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: cardCategories),
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: searchColor,
                      borderRadius: BorderRadius.circular(100)),
                ),
                Text(
                  'Cocktail',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
                Text('50 mixes',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: seeAll))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 120,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: cardCategories),
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: searchColor,
                      borderRadius: BorderRadius.circular(100)),
                ),
                Text(
                  'Cocktail',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
                Text('50 mixes',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: seeAll))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 120,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: cardCategories),
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: searchColor,
                      borderRadius: BorderRadius.circular(100)),
                ),
                Text(
                  'Cocktail',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
                Text('50 mixes',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: seeAll))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 120,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: cardCategories),
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: searchColor,
                      borderRadius: BorderRadius.circular(100)),
                ),
                Text(
                  'Cocktail',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
                Text('50 mixes',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: seeAll))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 120,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: cardCategories),
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: searchColor,
                      borderRadius: BorderRadius.circular(100)),
                ),
                Text(
                  'Cocktail',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
                Text('50 mixes',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: seeAll))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
