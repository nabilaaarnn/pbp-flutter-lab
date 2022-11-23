// To parse this JSON data, do
//
//     final mywatchlist = mywatchlistFromJson(jsonString);

import 'dart:convert';
import 'package:http/http.dart' as http;

List<Mywatchlist> mywatchlistFromJson(String str) => List<Mywatchlist>.from(json.decode(str).map((x) => Mywatchlist.fromJson(x)));

String mywatchlistToJson(List<Mywatchlist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mywatchlist {
    Mywatchlist({
        required this.model,
        required this.pk,
        required this.fields,
    });

    Model? model;
    int pk;
    Fields fields;

    factory Mywatchlist.fromJson(Map<String, dynamic> json) => Mywatchlist(
        model: modelValues.map[json["model"]],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };

    static Future<List<Mywatchlist>> fetchMyWatchList() async {
      var url = Uri.parse('https://tugas2rizka.herokuapp.com/mywatchlist/json/');
      var response = await http.get(
        url,
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Content-Type": "application/json",
        },
      );

      // melakukan decode response menjadi bentuk json
      var data = jsonDecode(utf8.decode(response.bodyBytes));

      // melakukan konversi data json menjadi object ToDo
      List<Mywatchlist> listMyWatchList = [];
      for (var d in data) {
        if (d != null) {
          listMyWatchList.add(Mywatchlist.fromJson(d));
        }
      }

      return listMyWatchList;
  }
}

class Fields {
    Fields({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    Watched? watched;
    String title;
    int rating;
    DateTime releaseDate;
    String review;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: watchedValues.map[json["watched"]],
        title: json["title"],
        rating: json["rating"],
        releaseDate: DateTime.parse(json["release_date"]),
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "watched": watchedValues.reverse[watched],
        "title": title,
        "rating": rating,
        "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "review": review,
    };
}

enum Watched { SUDAH, BELUM }

final watchedValues = EnumValues({
    "Belum": Watched.BELUM,
    "Sudah": Watched.SUDAH
});

enum Model { MYWATCHLIST_MYWATCHLIST }

final modelValues = EnumValues({
    "mywatchlist.Mywatchlist": Model.MYWATCHLIST_MYWATCHLIST
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
