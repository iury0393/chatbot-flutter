import 'package:flutter/material.dart';
import 'package:chatbot/views/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ChatScreen.id,
      routes: {
        //HomeScreen.id : (context) => HomeScreen(),
        ChatScreen.id : (context) => ChatScreen(),
      }
    );
  }
}