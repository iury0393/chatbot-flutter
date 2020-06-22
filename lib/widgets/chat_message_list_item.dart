import 'package:chatbot/models/chat_message.dart';
import 'package:flutter/material.dart';

class ChatMessageListItem extends StatelessWidget {
  final ChatMessage chatMessage;

  ChatMessageListItem({this.chatMessage});
  
  @override
  Widget build(BuildContext context) {
    return chatMessage.type == ChatMessageType.sent
    ? _showSendMessage()
    : _showReceivedMessage();
  }

  Widget _showSendMessage() {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(64.0, 0.0, 8.0, 0.0),
      trailing: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blue,
        child: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/profile.jpg')
          ),
      ),
      title: Text(chatMessage.name, textAlign: TextAlign.right),
      subtitle: Text(chatMessage.text, textAlign: TextAlign.right),
    );
  }

  Widget _showReceivedMessage() {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(8.0, 0.0, 64.0, 0.0),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.red,
        child: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/Gimli.png')
          ),
      ),
      title: Text(chatMessage.name, textAlign: TextAlign.left),
      subtitle: Text(chatMessage.text, textAlign: TextAlign.left),
    );
  }
}