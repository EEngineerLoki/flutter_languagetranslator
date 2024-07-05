import 'package:flutter_translator/model/message.dart';

class Data {
  static final chat = <Message>[
    const Message(message: 'Hello', isMe: false),
    const Message(message: 'How are you?', isMe: true),
    const Message(message: 'Great! How about you?', isMe: false),
    const Message(message: 'I\'m also doing fine', isMe: true),
    const Message(message: 'That\'s great to hear!', isMe: false),
  ];
}