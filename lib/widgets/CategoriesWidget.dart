import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
      children: [
        for(int i=1; i<6; i++)
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/$i.jpg",
                width: 40,
                height: 40,
              ),
              Text(
                "Chair",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromRGBO(1, 73, 12, 1),
                ),
              ),
            ],
          ),
        ),
      ],
      ),
    );


  }
}