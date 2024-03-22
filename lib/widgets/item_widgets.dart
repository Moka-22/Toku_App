import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:languageslearningapp/models/item_model.dart';
import 'package:languageslearningapp/widgets/item_info_widget.dart';
import '../utils/colors.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.item , required this.color});
final ItemModel item;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          // Image
          Container(
            color: imageBackGroundColor,
            child: Image.asset(
              item.image!,
            ),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}

