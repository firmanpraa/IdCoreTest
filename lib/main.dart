import 'package:flutter/material.dart';
import 'package:flutterappidcoretest/page/listBerita.dart';
import 'package:flutterappidcoretest/viewmodels/artikelBeritaListViewModel.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeritaKu',
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (context) => ArtikelBeritaListViewModel(),
          child: ListBerita()),
    );
  }
}
