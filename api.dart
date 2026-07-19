class ApiConfig {

  static const String apiKey =
      "41c76b10bf4a466f9b3559b3643befec";


  static const String baseUrl =
      "https://newsapi.org/v2";


  static String topHeadlines(String category){

    return
    "$baseUrl/top-headlines?"
    "country=us&"
    "category=$category&"
    "apiKey=$apiKey";

  }


}