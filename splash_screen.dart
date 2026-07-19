import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utils/constants.dart';

import 'home_screen.dart';



class SplashScreen extends StatefulWidget {


  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();


}



class _SplashScreenState extends State<SplashScreen> {



  @override
  void initState() {


    super.initState();


    _navigateToHome();


  }




  Future<void> _navigateToHome() async {


    await Future.delayed(

      const Duration(seconds: 3),

    );



    if (!mounted) return;



    Navigator.pushReplacement(


      context,


      MaterialPageRoute(


        builder: (context) => const HomeScreen(),


      ),


    );


  }




  @override
  Widget build(BuildContext context) {


    return Scaffold(


      backgroundColor:

          AppConstants.primaryColor,



      body: Center(


        child: Column(


          mainAxisAlignment:

              MainAxisAlignment.center,



          children: [



            Lottie.asset(


              AppConstants.loadingAnimation,


              width: 220,


            ),



            const SizedBox(height: 20),



            const Text(


              AppConstants.appName,


              style: TextStyle(


                color: Colors.white,


                fontSize: 24,


                fontWeight: FontWeight.bold,


              ),


            ),



            const SizedBox(height: 8),



            const Text(


              "Berita terbaru dalam genggaman Anda",


              style: TextStyle(


                color: Colors.white70,


                fontSize: 14,


              ),


            ),


          ],


        ),


      ),


    );


  }


}