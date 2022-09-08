// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:adorn/base/widget/adorn_statefull_widget.dart';
import 'package:adorn/base/widget/adorn_state.dart';
import 'package:ui_challange/res/widgets/chat/chat_widget.dart';
import 'package:ui_challange/res/widgets/drawer_menu/drawer_menu_widget.dart';
import 'package:ui_challange/res/widgets/task_list/task_list_widget.dart';
import 'landing_controller.dart';

class Landing extends AdornStatefulWidget {
  static const String routeName = "landing";

  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends AdornState<Landing> with LandingPageController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SizedBox(
            width: 240,
            child: DrawerMenu(),
          ),
          const Expanded(child: TaskList(

          )),
          Container(
            width: 340,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.black12,
                  width: 0.5
                ),
              ),
            ),
            child: const Chat(),
          ),
        ],
      ),
    );
  }
}
