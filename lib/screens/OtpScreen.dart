import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
        children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage("images/hotel 1.jpg"),
                    fit: BoxFit.cover,
                    ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70.0),
                        bottomRight: Radius.circular(70.0),
                      ),
                  ),
                ),
              ],
            ),
            new Container(
                  child: Column(
                    children: <Widget> [
                      Text("CREATE ACCOUNT",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      Text("Signup for account"),
                      SizedBox(height: 20.0,),
                    ],
                  ),
                ), 
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
            
          ],
        ),
    );
  }
}

