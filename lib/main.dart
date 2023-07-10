import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  //int count = 1;
  @override
  Widget build(BuildContext context) {
    //TabController tab = TabController(length: 4, vsync: this);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E55),
          title: Text(
            'Whatsapp',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 2, right: 20),
              child: Icon(
                Icons.camera_alt_rounded,
                size: 26,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2, left: 8, right: 9),
              child: Icon(
                Icons.search,
                size: 26,
              ),
            ),
            PopupMenuButton(
              iconSize: 27,
              padding: EdgeInsets.symmetric(vertical: 1),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "New Group",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "New broadcast",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Linked Devices",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text(
                    "Starred Messages",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
          /*bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_front),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ]),*/
        ),
      ),
    );
  }
}
