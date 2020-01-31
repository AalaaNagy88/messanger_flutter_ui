import 'package:messanger_flutter_ui/models/user_model.dart';

class Message{
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender,this.time,this.text,this.isLiked,this.unread});
}

final User current_user=User(id:0,name:"current_user",imgUrl: "images/greg.jpg");
final greg =User(id:1,name:"greg",imgUrl: "images/greg.jpg");
final james =User(id:2,name:"james",imgUrl: "images/james.jpg");
final john =User(id:3,name:"john",imgUrl: "images/john.jpg");
final olivia =User(id:4,name:"olivia",imgUrl: "images/olivia.jpg");
final sophia =User(id:5,name:"sophia",imgUrl: "images/sophia.jpg");
final steven =User(id:6,name:"steven",imgUrl: "images/steven.jpg");

List<User>favorite=[steven,james,sophia,john,olivia];

List<Message> chats=[
  Message(
    sender: olivia,
    time: "5:30PM",
    text: "See you,bye idjslkajklasklsdksdkjdsakjdjadsjajdskl",
    isLiked: false,
    unread: true
  ), Message(
      sender: sophia,
      time: "5:30PM",
      text: "See you,bye",
      isLiked: false,
      unread: true
  ),
  Message(
      sender: steven,
      time: "5:30PM",
      text: "See you,bye",
      isLiked: false,
      unread: false
  ),
  Message(
      sender: james,
      time: "5:30PM",
      text: "See you,bye",
      isLiked: false,
      unread: true
  ),
  Message(
      sender: john,
      time: "5:30PM",
      text: "See you,bye",
      isLiked: false,
      unread: true
  ),
  Message(
      sender: greg,
      time: "5:30PM",
      text: "See you,bye",
      isLiked: false,
      unread: false
  )
];

List<Message>messages=[
  Message(
      sender: current_user,
      time: "5:30PM",
      text: "See you,bye",
      isLiked: false,
      unread: true
  ),
  Message(
      sender: james,
      time: "5:30PM",
      text: "See you,bye",
      isLiked: true,
      unread: true
  ),
  Message(
      sender: current_user,
      time: "5:30PM",
      text: "See you,bye",
      isLiked: true,
      unread: true
  ),
  Message(
      sender: james,
      time: "5:30PM",
      text: "See you,bye",
      isLiked: false,
      unread: true
  )
];


