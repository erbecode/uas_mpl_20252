import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'providers/news_provider.dart';

import 'screens/splash_screen.dart';



void main(){


runApp(

ChangeNotifierProvider(

create:(_)=>NewsProvider(),

child:
const NewsApp(),

)

);


}



class NewsApp extends StatelessWidget {


const NewsApp({super.key});



@override
Widget build(BuildContext context){


return MaterialApp(

debugShowCheckedModeBanner:false,


title:"News App",


theme:ThemeData(

primarySwatch:
Colors.indigo,

),


home:
const SplashScreen(),


);


}


}