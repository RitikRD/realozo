import 'package:flutter/material.dart';
import 'package:realozo/Home_widgets/home_button.dart';
import 'package:realozo/Home_widgets/icon_card.dart';
import 'package:realozo/Home_widgets/images2_cards2.dart';
import 'package:realozo/Home_widgets/images3_cards3.dart';
import 'package:realozo/Home_widgets/images_cards.dart';
import 'package:realozo/Home_widgets/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Realozo",
            style: TextStyle(
                color: Colors.red[900],
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.person, color: Colors.black), onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          IconCard(),
          SizedBox(
            height: 10.0,
          ),
          Search(),
          SizedBox(height: 10.0),
          ImagesCards(),
          SizedBox(
            height: 20.0,
          ),
          new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Top Destinations",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
            padding: new EdgeInsets.all(10.0),
          ),
          SizedBox(height: 15.0),
          Images2Cards2(),
          SizedBox(height: 15.0),
          new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Offer's",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
            padding: new EdgeInsets.all(10.0),
          ),
          SizedBox(height: 10.0),
          Images3Cards3(),
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeButton(),
    );
  }
}
