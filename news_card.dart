import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import '../models/article_model.dart';



class NewsCard extends StatelessWidget{


final Article article;

final VoidCallback onTap;



const NewsCard({super.key, 

required this.article,

required this.onTap

});



@override

Widget build(BuildContext context){


return GestureDetector(

onTap:onTap,


child:

Card(

margin:
EdgeInsets.all(12),


shape:

RoundedRectangleBorder(

borderRadius:
BorderRadius.circular(20)

),


child:

Column(

children:[


ClipRRect(

borderRadius:
BorderRadius.vertical(
top:Radius.circular(20)
),


child:

CachedNetworkImage(

imageUrl:
article.image,

height:200,

width:
double.infinity,

fit:
BoxFit.cover

)

),


Padding(

padding:
EdgeInsets.all(15),


child:

Text(

article.title,

style:

TextStyle(

fontSize:18,

fontWeight:
FontWeight.bold

)

)

)


]

)

)


);


}

}