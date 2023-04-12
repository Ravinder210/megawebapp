import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mega/constants/controllers.dart';
import 'package:mega/constants/style.dart';
import 'package:mega/widgets/custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
    const HorizontalMenuItem({
    Key? key, 
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("Not hovering");
      },
      child: Obx(() => Container(
        color: menuController.isHovering(itemName) ?
        lightGrey.withOpacity(.1) :  Colors.transparent,
        child: Row(children: [
          Visibility(visible: menuController.isHovering(itemName)|| menuController.isActive(itemName),
          maintainSize: true, maintainState: true, maintainAnimation: true,
          child: Container(width: 6, height: 40 , color: Colors.black,),),

          SizedBox(width: _width/80,),
          Padding(
            padding: const EdgeInsets.all(16),
            child: menuController.returnIconFor(itemName),),
          if(!menuController.isActive(itemName))
          Flexible(child: CustomText(text: itemName, color: menuController.isHovering(itemName) ? Colors.black : lightGrey,))
          else 
          Flexible(child: CustomText(
            text: itemName,
            color: Colors.black,
            size: 18,
            weight: FontWeight.bold,
          ))
        ]),
      )),
    );
  }
}
