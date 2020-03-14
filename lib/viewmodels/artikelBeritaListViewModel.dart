

import 'package:flutter/cupertino.dart';
import 'package:flutterappidcoretest/models/artikelBerita.dart';
import 'package:flutterappidcoretest/services/webservices.dart';
import 'package:flutterappidcoretest/viewmodels/artikelBeritaViewModel.dart';

class ArtikelBeritaListViewModel extends ChangeNotifier {

  List<ArtikelBeritaViewModel> articles = List<ArtikelBeritaViewModel>();

  ArtikelBeritaListViewModel(){
    _headlineTerpopular();
  }
  void _headlineTerpopular() async{
     List<ArtikelBerita> artikelBerita = await Webservices().beritaTrending();
     this.articles =  artikelBerita.map((article) => ArtikelBeritaViewModel(article: article)).toList();
     notifyListeners();
}
}