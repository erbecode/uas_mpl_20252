class Article {


 final String title;

 final String description;

 final String image;

 final String url;

 final String author;


 Article({

 required this.title,

 required this.description,

 required this.image,

 required this.url,

 required this.author

 });



 factory Article.fromJson(Map<String,dynamic> json){

 return Article(

 title:
 json['title'] ?? "",


 description:
 json['description'] ?? "",


 image:
 json['urlToImage'] ?? "",


 url:
 json['url'] ?? "",


 author:
 json['author'] ?? "Unknown"

 );

 }


}