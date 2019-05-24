import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,i){
        Column(
          children: <Widget>[
            new Divider(),
            new ListTile(
              leading: new Text("Hello")//CircleAvatar(child: Image.asset("images/umbrella.png"),backgroundColor: Colors.brown.shade800,),
             /* title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
                  new Text(dummyData[i].name),
                  new Text(dummyData[i].time)
                ]
              ),
              subtitle: new Container(
                child: new Text(dummyData[i].message),
              )*/
            ),
          ],
        );
      },

    );/*
     return Center(
      child:
      new Text("Chats")
      
     );*/
  }
}
