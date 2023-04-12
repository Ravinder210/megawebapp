import 'package:flutter/material.dart';
import 'package:mega/helpers/responsiveness.dart';
import 'package:mega/widgets/horizontal_menu_items.dart';
import 'package:mega/widgets/vertical_menu_items.dart';

class SideMenuitem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
    const SideMenuitem({
    Key? key, 
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItems(
        itemName: itemName,
        onTap: onTap,
      );
    }
    return HorizontalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
