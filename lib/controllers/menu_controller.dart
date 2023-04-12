
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mega/constants/style.dart';
import 'package:mega/routing/routes.dart';


class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = DashBoardPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case DashBoardPageRoute:
        return _customIcon(Icons.pie_chart_outline_rounded, itemName);

      case CatalogsPageRoute:
        return _customIcon(Icons.grid_view_rounded, itemName);
   
      case ProductsPageRoute:
        return _customIcon(Icons.shopping_bag_rounded, itemName);


      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: Colors.black,
      );
    }

    return Icon(icon, color: isHovering(itemName) ? Colors.black : lightGrey);
  }
}
