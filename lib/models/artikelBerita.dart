
class ArtikelBerita{
  final String title;
  final String description;
  final String urlToImage;
  final String url;

  ArtikelBerita({this.title, this.description, this.urlToImage, this.url });

  factory ArtikelBerita.fromJSON(Map<String, dynamic> json){
     return ArtikelBerita(
       title: json["title"],
       description: json["description"],
       urlToImage: json["urlToImage"],
       url: json["url"]
     );
  }
}