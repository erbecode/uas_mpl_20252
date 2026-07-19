import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class LoadingWidget extends StatelessWidget {


  final double width;


  const LoadingWidget({

    super.key,

    this.width = 200,

  });



  @override
  Widget build(BuildContext context) {


    return Center(

      child: Lottie.asset(

        "assets/animations/opening_news.json",

        width: width,

        fit: BoxFit.contain,

      ),

    );


  }


}