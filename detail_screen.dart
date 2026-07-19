import 'package:flutter/material.dart';

import '../models/article_model.dart';



class DetailScreen extends StatelessWidget{


final Article article;



const DetailScreen({super.key, 

required this.article

});



@override

Widget build(BuildContext context){


return Scaffold(


appBar:

AppBar(

title:

Text("Detail")

),



body:

SingleChildScrollView(


padding:
EdgeInsets.all(20),


child:

Column(

crossAxisAlignment:
CrossAxisAlignment.start,


children:[


Image.network(article.image),


SizedBox(height:20),



Text(

article.title,

style:

TextStyle(

fontSize:24,

fontWeight:
FontWeight.bold

)

),


SizedBox(height:20),


Text(

article.description

)


]

)

)


);


}

}