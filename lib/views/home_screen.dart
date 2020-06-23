import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static final id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot - Gimli'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Text('Gimli ChatBot', style: GoogleFonts.odibeeSans(),),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 70.0),
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () {

            },
            child: Text('Prosseguir'),
          ),
        ],
      ),
    );
  }
}
