import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/utilities/constants.dart';
import 'package:whatsapp/view/calls_page.dart';
import 'package:whatsapp/view/camera_page.dart';
import 'package:whatsapp/view/chats_page.dart';
import 'package:whatsapp/view/status_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                // iconTheme: IconThemeData(color: Colors.white),
                title: Text('WhatsApp'),
                backgroundColor: backgroundColor,
                pinned: true,
                floating: true,
                snap: true,
                actions: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: accentColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: accentColor,
                    ),
                  ),
                ],
                bottom: TabBar(
                  // onTap: (index) {
                  //   print('Current Index = ' + index.toString());
                  // },
                  labelPadding: EdgeInsets.symmetric(horizontal: width/16.0),
                  isScrollable: true,
                  indicatorColor: accentColor,
                  tabs: <Widget>[
                    Container(
                            width: 10.0,
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Icon(Icons.camera_alt),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('CHATS'),
                          SizedBox(width: 5.0),
                          CircleAvatar(
                            radius: 10.0,
                            backgroundColor: accentColor,
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: backgroundColor,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('STATUS'),
                          SizedBox(width: 5.0),
                          CircleAvatar(
                              radius: 3.0, backgroundColor: inActiveColor),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Text('CALLS'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              CameraPage(),
              ChatsPage(),
              StatusPage(),
              CallsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
