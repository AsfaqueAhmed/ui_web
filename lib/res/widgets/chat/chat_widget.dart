import 'package:flutter/material.dart';
import 'package:adorn/base/widget/adorn_statefull_widget.dart';
import 'package:adorn/base/widget/adorn_state.dart';
import 'chat_widget_controller.dart';

class Chat extends AdornStatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends AdornState<Chat> with ChatWidgetController {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
