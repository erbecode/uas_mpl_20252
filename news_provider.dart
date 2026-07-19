import 'package:flutter/material.dart';

import '../models/article_model.dart';

import '../services/news_service.dart';



class NewsProvider extends ChangeNotifier{


 final NewsService service =
 NewsService();



 List<Article> articles=[];


 bool loading=false;


 String category="technology";



 Future<void> fetchNews() async{


 loading=true;

 notifyListeners();



 try{


 articles =
 await service.getNews(category);



 }

 catch(e){

 articles=[];

 }



 loading=false;


 notifyListeners();


 }



 void changeCategory(String value){


 category=value;


 fetchNews();


 }



}