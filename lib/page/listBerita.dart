import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappidcoretest/viewmodels/artikelBeritaListViewModel.dart';
import 'package:provider/provider.dart';

class ListBerita extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<ArtikelBeritaListViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Teratas'),
      ),
      body: ListView.builder(
        itemCount: vm.articles.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(vm.articles[index].title),
          );
        },
      ),
    );
  }
}
