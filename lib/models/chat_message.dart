enum ChatMessageType { sent, received }

class ChatMessage {
  final String text;
  final String name;
  final ChatMessageType type;

  ChatMessage({this.name, this.text, this.type});
}