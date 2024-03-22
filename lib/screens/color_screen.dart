import 'package:flutter/material.dart';

import '../models/item_model.dart';
import '../utils/colors.dart';
import '../widgets/item_widgets.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'Black',
      sound:'sounds/colors/black.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'Dusty Yellow',
      sound: 'assets/sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Howaito',
      enName: 'White',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      jpName: 'kiiro',
      enName: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: appBarColor,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Items(
            color: colorTabColor,
            item: numbers[index],
          );
        },
      ),
    );
  }
}
