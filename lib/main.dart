import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'constants.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(fontSize: 16),
        ),
        elevation: 0,
        backgroundColor: Colors.teal[800],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Material(
              elevation: 5.0,
              child: Container(
                color: Colors.teal[800],
                height: width / 8,
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Color.fromRGBO(250, 250, 250, 100),
                    ),
                    SizedBox(width: width / 10),
                    Text(
                      'CHATS',
                      style: kViewControllerTextStyle,
                    ),
                    SizedBox(width: width / 10),
                    Text(
                      'STATUS',
                      style: kViewControllerTextStyle,
                    ),
                    SizedBox(width: width / 10),
                    Text(
                      'CALLS',
                      style: kViewControllerTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    title: Text('Ali Raza'),
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
