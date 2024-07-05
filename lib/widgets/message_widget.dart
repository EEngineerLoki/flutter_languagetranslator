import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String message;
  final String translatedMessage;
  final bool isMe;

  const MessageWidget({
    super.key,
    required this.message,
    required this.translatedMessage,
    required this.isMe});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(12);
    const borderRadius = BorderRadius.all(radius);

    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
          decoration: BoxDecoration(
            color: isMe ? Colors.white : Colors.orangeAccent,
            borderRadius: isMe
              ? borderRadius.subtract(const BorderRadius.only(bottomRight: radius))
              : borderRadius.subtract(const BorderRadius.only(bottomLeft: radius)) 
          ),
          child: buildMessage(),
        )
      ],
    );
  }

  Widget buildMessage() => Column(
    crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
    children: [
      Text(message, style: TextStyle(
        color: isMe ? Colors.black54 : Colors.white70,
        fontSize: 14,
      ),textAlign: isMe ? TextAlign.end : TextAlign.start,),

      Text(translatedMessage, style: TextStyle(
        color: isMe ? Colors.black87 : Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),textAlign: isMe ? TextAlign.end : TextAlign.start,)
    ],
  );
}