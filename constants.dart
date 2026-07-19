import 'package:flutter/material.dart';


class AppConstants {


  // ==========================
  // APP INFORMATION
  // ==========================

  static const String appName = "News App";

  static const String appVersion = "1.0.0";



  // ==========================
  // THEME COLORS
  // ==========================

  static const Color primaryColor =
      Colors.indigo;


  static const Color backgroundColor =
      Color(0xffF5F7FB);


  static const Color cardColor =
      Colors.white;


  static const Color textColor =
      Color(0xff1E1E1E);


  static const Color secondaryTextColor =
      Color(0xff757575);




  // ==========================
  // LOTTIE ASSETS
  // ==========================

  static const String loadingAnimation =
      "assets/animations/loading.json";


  static const String openingNewsAnimation =
      "assets/animations/opening_news.json";


  static const String emptyNewsAnimation =
      "assets/animations/empty_news.json";


  static const String noInternetAnimation =
      "assets/animations/no_internet.json";




  // ==========================
  // NEWS CATEGORY
  // ==========================

  static const List<String> categories = [

    "technology",

    "business",

    "sports",

    "health",

    "science",

    "entertainment",

  ];




  // ==========================
  // API DEFAULT SETTINGS
  // ==========================

  static const String defaultCountry =
      "us";




  // ==========================
  // UI CONSTANTS
  // ==========================

  static const double defaultPadding =
      16.0;


  static const double cardRadius =
      20.0;


  static const double buttonRadius =
      30.0;


  static const double animationWidth =
      220.0;


}