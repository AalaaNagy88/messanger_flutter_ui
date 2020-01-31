import 'package:flutter/material.dart';
import 'package:messanger_flutter_ui/screens/group_screen.dart';
import 'package:messanger_flutter_ui/screens/message_screen.dart';
import 'package:messanger_flutter_ui/screens/online_screen.dart';
import 'package:messanger_flutter_ui/screens/request_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
          Icons.menu,
          color: Colors.white,
        )),
        title: Center(
            child: Text(
          "Chats",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        )),
        actions: <Widget>[
          IconButton(
              icon: Icon(
            Icons.search,
            color: Colors.white,
          ))
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              child: Text(
                "Messages",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Tab(
              child: Text(
                "Online",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Tab(
              child: Text(
                "Groups",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Tab(
              child: Text(
                "Requests",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
          isScrollable: true,
          labelPadding: EdgeInsets.only(left: 10, bottom: 5, right: 10),
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                MessagesScreen(),
                OnlineScreen(),
                GroupsScreen(),
                RequestsScreen()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
