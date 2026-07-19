import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../providers/news_provider.dart';

import '../widgets/category_tab.dart';
import '../widgets/loading_widget.dart';
import '../widgets/news_card.dart';

import '../utils/constants.dart';

import 'detail_screen.dart';



class HomeScreen extends StatefulWidget {


  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();


}



class _HomeScreenState extends State<HomeScreen> {



  @override
  void initState() {

    super.initState();


    WidgetsBinding.instance.addPostFrameCallback((_) {


      if (!mounted) return;


      Provider.of<NewsProvider>(

        context,

        listen: false,

      ).fetchNews();


    });


  }



  @override
  Widget build(BuildContext context) {


    final provider =

        Provider.of<NewsProvider>(context);



    return Scaffold(


      backgroundColor:

          AppConstants.backgroundColor,



      appBar: AppBar(


        backgroundColor:

            AppConstants.primaryColor,


        elevation: 0,


        centerTitle: true,


        title: const Text(


          AppConstants.appName,


          style: TextStyle(


            color: Colors.white,


            fontWeight: FontWeight.bold,


            fontSize: 20,

          ),


        ),


      ),




      body: Column(


        children: [



          // ==========================
          // CATEGORY
          // ==========================


          SizedBox(


            height: 65,


            child: ListView.builder(


              scrollDirection:

                  Axis.horizontal,


              padding:

                  const EdgeInsets.symmetric(

                    horizontal: 10,

                  ),



              itemCount:

                  AppConstants.categories.length,



              itemBuilder:

                  (context, index) {



                final category =

                    AppConstants.categories[index];



                return CategoryTab(


                  category: category,



                  isSelected:

                      provider.category == category,



                  onTap: () {


                    provider.changeCategory(

                      category,

                    );


                  },


                );


              },


            ),


          ),





          // ==========================
          // CONTENT
          // ==========================


          Expanded(


            child: _newsContent(provider),


          ),


        ],


      ),


    );


  }






  Widget _newsContent(NewsProvider provider) {



    // LOADING

    if (provider.loading) {


      return const LoadingWidget(

        width: AppConstants.animationWidth,

      );


    }




    // EMPTY NEWS

    if (provider.articles.isEmpty) {


      return Center(


        child: Column(


          mainAxisAlignment:

              MainAxisAlignment.center,



          children: [



            Lottie.asset(


              AppConstants.emptyNewsAnimation,


              width:

                  AppConstants.animationWidth,


            ),



            const SizedBox(height: 15),



            const Text(


              "Berita tidak tersedia",


              style: TextStyle(


                fontSize: 16,


                fontWeight:

                    FontWeight.w600,


              ),


            ),


          ],


        ),


      );


    }





    // NEWS LIST

    return RefreshIndicator(


      onRefresh: () async {


        await provider.fetchNews();


      },



      child: ListView.builder(


        physics:

            const BouncingScrollPhysics(),



        padding:

            const EdgeInsets.only(

              top: 10,

              bottom: 20,

            ),



        itemCount:

            provider.articles.length,



        itemBuilder:

            (context, index) {



          final article =

              provider.articles[index];



          return NewsCard(


            article: article,



            onTap: () {


              Navigator.push(


                context,


                MaterialPageRoute(


                  builder: (context) =>

                      DetailScreen(

                        article: article,

                      ),


                ),


              );


            },


          );


        },


      ),


    );


  }


}