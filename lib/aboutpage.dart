import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth;
    return Container(
  width: screenWidth,
  padding: EdgeInsets.all(8),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Mission Statement:',
        style: Theme.of(context).textTheme.headline6,
      ),
      SizedBox(height: 15),
      Text(
        'Our mission is to provide high-quality products and services to our customers.',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      SizedBox(height: 20),
      Text(
        'Values:',
        style: Theme.of(context).textTheme.headline6,
      ),
      SizedBox(height: 15),
      ListTile(
        leading: Icon(Icons.check),
        title: Text('Customer satisfaction is our top priority'),
      ),
      ListTile(
        leading: Icon(Icons.check),
        title: Text('We strive for continuous improvement'),
      ),
      ListTile(
        leading: Icon(Icons.check),
        title: Text('We value honesty and integrity in all our actions'),
      ),

      ListTile(
        title: Text('Founded in 2023, our company has been serving the community for over 10 years. We started out as a small business with just a few employees, but have since grown into a successful and well-respected organization. We are proud of the high-quality products and services we offer, and strive to continuously improve and innovate to meet the changing needs of our customers.',
        style: Theme.of(context).textTheme.bodyMedium,
  )
      ),


    ],

    




  )
);

  }
}