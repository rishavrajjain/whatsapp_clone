import 'package:flutter/material.dart';
import '../pages/camera.dart';
import '../pages/chats.dart';
import '../pages/status.dart';
import '../pages/calls.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
  
    super.initState();
    _tabController=new TabController(vsync: this,initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar
      (
      title: new Text("WhatsApp"),
      actions: <Widget>[Icon(Icons.search),Icon(Icons.more_vert,),Padding(padding: EdgeInsets.all(10),)],
      bottom: TabBar
        (
        controller: _tabController,
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.camera_alt),),
          Tab(text: "CHATS",),
          Tab(text: "STATUS",),
          Tab(text: "CALLS",)
        ],
        ),
      ),
      body: 
      new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen()

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[300],//Theme.of(context).accentColor,
        child: new Icon(Icons.message,color: Colors.white,), onPressed: () {},
      ),

    );
  }
}