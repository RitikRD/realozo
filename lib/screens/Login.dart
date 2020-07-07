import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realozo/screens/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
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
                children: <Widget>[
                  Text(
                    "WELCOME BACK",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text("Login to your account"),
                  SizedBox(
                    height: 20.0,
                  ),
                  new TextFormField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(35),
                    ],
                    showCursor: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email Or Phone No.",
                      hintMaxLines: 2,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  new TextFormField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(8),
                    ],
                    showCursor: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintMaxLines: 2,
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                ],
              ),
              padding: EdgeInsets.all(15.0),
            ),
            new Container(
              child: new MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new HomeScreen()));
                },
                height: 50.0,
                minWidth: 330,
                color: Colors.red[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            new Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "OR",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                  ),
                  Text("  Login in  with"),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            new Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlatButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage("images/facebook.png"),
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage("images/google.png"),
                      height: 50.0,
                      width: 60.0,
                    ),
                  ),
                  new FlatButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage("images/twitter.png"),
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
