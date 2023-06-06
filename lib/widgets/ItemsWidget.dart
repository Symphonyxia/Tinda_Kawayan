import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i<6; i++)
        Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                color: Color.fromRGBO(1, 73, 12, 1),
                borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "50%",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
              Icon(
                Icons.favorite_border,
                color: Colors.purple,
              )
            ],

          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "itemPage");
            },
            child: Container(
              margin: EdgeInsets.all(20),
              child: Image.asset(
                "images/$i.jpg",
                height: 120,
                width: 120,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              "Product Title",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(1, 73, 12, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Write Description of product",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(1, 73, 12, 1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Text(
                    "\$55",
                    style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(1, 73, 12, 1),
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_checkout,
                    color: Color.fromRGBO(1, 73, 12, 1),
                  ),
            ]),
            )
        ],
        ),
        ),
      ],
    );

  }
}