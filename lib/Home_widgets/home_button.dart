import 'package:flutter/material.dart';
import 'package:realozo/Home_widgets/favorite.dart';
import 'package:realozo/Home_widgets/help.dart';
import 'package:realozo/Home_widgets/homes.dart';
import 'package:realozo/Home_widgets/notification.dart';

class HomeButton extends StatefulWidget {
  @override
  _HomeButtonState createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  int currnetTab = 0;
  final List<Widget> screens = [
    Homes(),
    Favorite(),
    Notifiy(),
    Help(),
  ];

  Widget currentScreen = Homes();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.red[800]),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                minWidth: 60.0,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = Homes();
                      currnetTab = 0;
                    },
                  );
                },
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60.0,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = Favorite();
                      currnetTab = 0;
                    },
                  );
                },
                child: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60.0,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = Notifiy();
                      currnetTab = 0;
                    },
                  );
                },
                child: Icon(
                  Icons.notification_important,
                  color: Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60.0,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = Help();
                      currnetTab = 0;
                    },
                  );
                },
                child: Icon(
                  Icons.chat,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
