




import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});

final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                item.enName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        // Play Sound
        IconButton(
          onPressed: (){
          item.playSound();
          },
          icon: Icon(
            Icons.play_arrow,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
