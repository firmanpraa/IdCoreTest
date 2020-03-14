

 import 'package:flutterappidcoretest/models/artikelBerita.dart';

class ArtikelBeritaViewModel{

  ArtikelBerita _artikelBerita;

  ArtikelBeritaViewModel({ArtikelBerita article}): _artikelBerita = article ;

  String get title{
    return _artikelBerita.title;
  }

  String get description{
    return _artikelBerita.description;
  }

  String get urlTopImage{
    return _artikelBerita.urlToImage;
  }

  String get url{
    return _artikelBerita.url;
  }
 }