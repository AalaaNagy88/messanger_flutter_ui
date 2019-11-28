import 'package:flutter/material.dart';
import 'package:messanger_flutter_ui/models/message_model.dart';
import 'package:messanger_flutter_ui/screens/chat_screen.dart';

class FavoriteContacts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Favorite Contacts",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.blueGrey,
                ),
                iconSize: 30,
                onPressed: () => {},
              )
            ],
          ),
        ),
        Container(
          height: 120,
          child: ListView.builder(
            itemCount: favorite.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,i){
              return GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(
                  builder: (_)=>ChatScreen(user: favorite[i],)
                )),
                child:Padding(
                padding: EdgeInsets.all(10),
                child:  Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(favorite[i].imgUrl),
                      radius: 35,
                    ),
                    SizedBox(height: 6,),
                    Text(
                      favorite[i].name,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey,
                          fontSize: 16
                      ),
                    )
                  ],
                ),
              ));
            },
          ),
        )
      ],
    );
  }

}