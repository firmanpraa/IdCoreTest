import 'dart:convert';

import 'package:flutterappidcoretest/models/artikelBerita.dart';
import 'package:http/http.dart' as http;

class Webservices {

  Future<List<ArtikelBerita>> beritaTrending() async  {
    String url = "http://newsapi.org/v2/everything?q=apple&from=2020-03-13&to=2020-03-13&sortBy=popularity&apiKey=1fb1c43f06a94414a32c51954c8fe47c";
    final response = await http.get(url);

    if(response.statusCode == 200){

      final result = jsonDecode( response.body);
      Iterable list = result["article"];
      return list.map((article) => ArtikelBerita.fromJSON(article)).toList();
    }else{
      throw Exception("Gagal mencari trending");
    }
  }
}
