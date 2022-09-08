import 'package:flutter/material.dart';
import 'package:adorn/base/widget/adorn_statefull_widget.dart';
import 'package:adorn/base/widget/adorn_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_challange/res/utility/utility.dart';
import 'package:ui_challange/res/widgets/drawer_menu_item_widget.dart';
import 'drawer_menu_widget_controller.dart';

class DrawerMenu extends AdornStatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends AdornState<DrawerMenu>
    with DrawerMenuWidgetController {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: currentTheme.backgroundColor,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: boxShadows,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  child: Center(
                    child: Text("H",
                        style: GoogleFonts.msMadi(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  "HelloHRM",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              children: [
                DrawerMenuItem(
                  selected: selectedMenu,
                  icon: const Icon(Iconsax.graph, size: 18),
                  title: const Text("Dashboard"),
                  index: 0,
                  onSelect: onSelectMenu,
                ),
                DrawerMenuItem(
                  selected: selectedMenu,
                  icon: const Icon(Iconsax.task, size: 18),
                  title: const Text("Task"),
                  index: 3,
                  onSelect: onSelectMenu,
                ),
                DrawerMenuItem(
                  selected: selectedMenu,
                  icon: const Icon(Iconsax.kanban, size: 18),
                  title: const Text("Kanban"),
                  index: 4,
                  onSelect: onSelectMenu,
                ),
                DrawerMenuItem(
                  selected: selectedMenu,
                  icon: const Icon(Iconsax.setting, size: 18),
                  title: const Text("Settings"),
                  index: 1,
                  onSelect: onSelectMenu,
                ),
                DrawerMenuItem(
                  selected: selectedMenu,
                  icon: const Icon(Iconsax.activity, size: 18),
                  title: const Text("Activity"),
                  index: 2,
                  onSelect: onSelectMenu,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff3160fc),
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 16),
                Text(
                  "New Project",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
