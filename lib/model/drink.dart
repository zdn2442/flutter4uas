// To parse this JSON data, do
//
//     final dataDrink = dataDrinkFromJson(jsonString);

import 'dart:convert';

DataDrink dataDrinkFromJson(String str) => DataDrink.fromJson(json.decode(str));

String dataDrinkToJson(DataDrink data) => json.encode(data.toJson());

class DataDrink {
    String status;
    String msg;
    Data data;

    DataDrink({
        required this.status,
        required this.msg,
        required this.data,
    });

    factory DataDrink.fromJson(Map<String, dynamic> json) => DataDrink(
        status: json["status"],
        msg: json["msg"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
    };
}

class Data {
    int count;
    List<Row> rows;

    Data({
        required this.count,
        required this.rows,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        count: json["count"],
        rows: List<Row>.from(json["rows"].map((x) => Row.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "rows": List<dynamic>.from(rows.map((x) => x.toJson())),
    };
}

class Row {
    int id;
    String nama;
    String gambar;
    int idKategori;
    String waktu;
    String kesulitan;
    int like;
    int rating;
    String deskripsi;
    int penyajian;
    DateTime createdAt;
    DateTime updatedAt;

    Row({
        required this.id,
        required this.nama,
        required this.gambar,
        required this.idKategori,
        required this.waktu,
        required this.kesulitan,
        required this.like,
        required this.rating,
        required this.deskripsi,
        required this.penyajian,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Row.fromJson(Map<String, dynamic> json) => Row(
        id: json["id"],
        nama: json["nama"],
        gambar: json["gambar"],
        idKategori: json["idKategori"],
        waktu: json["waktu"],
        kesulitan: json["kesulitan"],
        like: json["like"],
        rating: json["rating"],
        deskripsi: json["deskripsi"],
        penyajian: json["penyajian"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "gambar": gambar,
        "idKategori": idKategori,
        "waktu": waktu,
        "kesulitan": kesulitan,
        "like": like,
        "rating": rating,
        "deskripsi": deskripsi,
        "penyajian": penyajian,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}
