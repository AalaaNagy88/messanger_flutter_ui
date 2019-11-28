import 'package:flutter/material.dart';
import 'package:messanger_flutter_ui/widget/favorite_contacts.dart';
import 'package:messanger_flutter_ui/widget/recent_chats.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FavoriteContacts(),
        RecentChats()
      ],
    );
  }
}
