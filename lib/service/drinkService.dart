// ignore_for_file: file_names

import 'package:flutter/services.dart';

import '../model/drink.dart';


class LoginService {
  getData() async {
    final String response =
    //proses membaca json menjadi string
    await rootBundle.loadString('assets/json/drink.json');

    // merubah json menjadi variable dataLogin
    DataDrink data = dataDrinkFromJson(response);

    //mengirim data list login yang spesifik
    return data.data;
  }
}
