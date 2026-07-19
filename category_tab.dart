import 'package:flutter/material.dart';


class CategoryTab extends StatelessWidget {


  final String category;

  final bool isSelected;

  final VoidCallback onTap;



  const CategoryTab({

    super.key,

    required this.category,

    required this.isSelected,

    required this.onTap,

  });



  @override

  Widget build(BuildContext context) {


    return GestureDetector(

      onTap: onTap,


      child: AnimatedContainer(

        duration: const Duration(milliseconds: 300),


        margin: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 8,
        ),


        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),


        decoration: BoxDecoration(

          color: isSelected

              ? Colors.indigo

              : Colors.grey.shade200,


          borderRadius: BorderRadius.circular(30),


          boxShadow: isSelected

              ? [

                  BoxShadow(

                    color: Colors.indigo.withValues(alpha: 0.3),

                    blurRadius: 8,

                    offset: const Offset(0, 4),

                  )

                ]

              : [],

        ),



        child: Center(


          child: Text(

            category.toUpperCase(),


            style: TextStyle(

              fontSize: 13,


              fontWeight: FontWeight.w600,


              color: isSelected

                  ? Colors.white

                  : Colors.black87,

            ),

          ),

        ),

      ),

    );


  }

}