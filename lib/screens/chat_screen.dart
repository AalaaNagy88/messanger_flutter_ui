import 'package:flutter/material.dart';
import 'package:messanger_flutter_ui/models/message_model.dart';
import 'package:messanger_flutter_ui/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  _buildMes(Message mes, bool isMe) {
    return Container(
      margin: isMe
          ? EdgeInsets.only(top: 8, bottom: 0, left: 80)
          : EdgeInsets.only(top: 8, bottom: 0, right: 80),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
          color: isMe ? Theme
              .of(context)
              .accentColor : Color(0xffffefee),
          borderRadius: isMe
              ? BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15))
              : BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(mes.time, style: TextStyle(color: Colors.blueGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),),
          SizedBox(height: 8,),
          Text(mes.text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.insert_emoticon)),
          Expanded(child: TextField(
            decoration: InputDecoration(hintText: "Send a Message..."),
          ),),
          IconButton(icon: Icon(Icons.attach_file)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            widget.user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.error_outline,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: ListView.builder(
                        reverse: true,
                        padding: EdgeInsets.only(top: 15),
                        itemCount: messages.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Message mes = messages[index];
                          bool isMe = mes.sender.id == current_user.id;
                          return _buildMes(mes, isMe);
                        }),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                )
            ),
            _buildMessageComposer(),
          ],
        ));
  }

}