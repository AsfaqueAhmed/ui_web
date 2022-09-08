import 'package:flutter/material.dart';
import 'package:adorn/base/widget/adorn_statefull_widget.dart';
import 'package:adorn/base/widget/adorn_state.dart';
import 'package:ui_challange/res/utility/utility.dart';

class DrawerMenuItem extends AdornStatefulWidget {
  final Widget icon;
  final Widget title;
  final int selected;
  final int index;
  final Function(int) onSelect;

  const DrawerMenuItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.selected,
    required this.onSelect,
    required this.index,
  }) : super(key: key);

  @override
  _DrawerMenuItemState createState() => _DrawerMenuItemState();
}

class _DrawerMenuItemState extends AdornState<DrawerMenuItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onSelect(widget.index),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 2),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: widget.selected == widget.index
              ? Colors.white
              : Colors.transparent,
          boxShadow: widget.selected == widget.index ? boxShadows : [],
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            widget.icon,
            const SizedBox(
              width: 12,
            ),
            Expanded(child: widget.title)
          ],
        ),
      ),
    );
  }
}
