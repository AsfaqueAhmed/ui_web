import 'package:flutter/material.dart';
import 'package:adorn/base/widget/adorn_statefull_widget.dart';
import 'package:adorn/base/widget/adorn_state.dart';
import 'task_list_widget_controller.dart';

class TaskList extends AdornStatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends AdornState<TaskList>
    with TaskListWidgetController {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            "Daily Tasks",
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
