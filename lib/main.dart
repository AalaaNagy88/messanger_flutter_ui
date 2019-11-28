import 'package:flutter/material.dart';
import 'package:messanger_flutter_ui/screens/home_screen.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter chat",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xfffef9eb)
      ),
    );
  }
}
