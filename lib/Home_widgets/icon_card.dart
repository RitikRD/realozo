import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            child: FlatButton(
              onPressed: () {},
              child: Image(
                image: AssetImage("images/near me.png"),
                height: 90.0,
                width: 80.0,
              ),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {},
              child: Image(
                image: AssetImage("images/jaipur.png"),
                height: 90.0,
                width: 80.0,
              ),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {},
              child: Image(
                image: AssetImage("images/panjab.png"),
                height: 90.0,
                width: 80.0,
              ),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {},
              child: Image(
                image: AssetImage("images/delhi.png"),
                height: 90.0,
                width: 80.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
