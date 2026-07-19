import 'dart:convert';

import 'package:http/http.dart' as http;

import '../config/api.dart';

import '../models/article_model.dart';



class NewsService {


 Future<List<Article>> getNews(String category) async {


 final response =
 await http.get(
 Uri.parse(
 ApiConfig.topHeadlines(category)
 )
 );


 if(response.statusCode==200){


 final data =
 json.decode(response.body);



 List articles =
 data['articles'];



 return articles
 .map(
 (e)=>Article.fromJson(e)
 )
 .toList();



 }


 throw Exception("Failed");

 }


}