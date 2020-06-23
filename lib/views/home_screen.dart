import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static final id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot - Gimli'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Text(
            'Gimli',
            style: GoogleFonts.odibeeSans(
              textStyle: TextStyle(
                fontSize: 100.0,
                color: Colors.red,
              ),
            ),
          ),
          Text(
            'ChatBot',
            style: GoogleFonts.odibeeSans(
              textStyle: TextStyle(
                fontSize: 100.0,
                color: Colors.redAccent,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                name = value;
              },
              decoration: InputDecoration(
                helperText: 'EX: Iury',
                hintText: 'Digite seu nome',
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 70.0),
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () {
              String phrase = 'Olá, meu nome é $name';
              print(phrase);
            },
            child: Text('Prosseguir'),
          ),
        ],
      ),
    );
  }
}
