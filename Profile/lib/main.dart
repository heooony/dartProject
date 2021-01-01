import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal[500],
      appBar: AppBar(
          backgroundColor: Colors.teal[300],
          title: Center(
            child: Text('My Profile'),
          )),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Dongheon Kim',
              style: TextStyle(
                fontFamily: 'SpoqaL',
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'Spoqa',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: ListTile(
                    leading: Icon(
                      Icons.call,
                      size: 20,
                    ),
                    title: Text(
                      '010-4195-1459',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Spoqa'),
                    ))),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 20,
                  ),
                  title: Text(
                    'oueya1479@naver.com',
                    style: TextStyle(
                        color: Colors.black, fontSize: 20, fontFamily: 'Spoqa'),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
