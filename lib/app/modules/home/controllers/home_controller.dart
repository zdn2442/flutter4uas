import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../../../../model/drink.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  List<DataDrink> dataDrink = [];

  final learn = "I want to learn...".obs;
  final count = 0.obs;
  @override
  void onInit() {
    print("${dotenv.env['BASE_URL']}getDrink");
    getData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  getData() async {
    print("mau");
    Uri url = Uri.parse("${dotenv.env['BASE_URL']}getDrink");
    // Uri url2 = Uri.parse("http://172.16.70.39:1010/getDrink");
    print("mau2");

    
      
      // var response2 = await http.get(url2);
      // print('mau4');
      var response = await http.get(url);
      print("mau3");
      if (response.statusCode == 200) {
        print('success');
        DataDrink result  = dataDrinkFromJson(response.body);
        dataDrink = result.data as List<DataDrink>;
        print(dataDrink);
      } else {
        print('fail');
      }
    
  }
}
