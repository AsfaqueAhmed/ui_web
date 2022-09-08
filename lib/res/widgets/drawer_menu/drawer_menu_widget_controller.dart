import 'package:adorn/base/widget/adorn_state.dart';
import 'drawer_menu_widget.dart';

mixin DrawerMenuWidgetController on AdornState<DrawerMenu> {
  int selectedMenu = 0;

  void onSelectMenu(ind) {
    setState(() {
      selectedMenu = ind;
    });
  }
}
