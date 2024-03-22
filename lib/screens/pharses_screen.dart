import 'package:flutter/material.dart';
import 'package:languageslearningapp/models/item_model.dart';
import 'package:languageslearningapp/widgets/phrases_widget.dart';
import '../utils/colors.dart';


class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(jpName: '', enName: 'Are you coming', sound: 'sounds/phrases/are_you_coming.wav',),
    ItemModel(jpName: '', enName: 'Don\'n forget to subscribe', sound: 'sounds/phrases/dont_forget_to_subscribe.wav',),
    ItemModel(jpName: '', enName: 'How are you feeling', sound: 'sounds/phrases/how_are_you_feeling.wav',),
    ItemModel(jpName: '', enName: 'I love anime', sound: 'sounds/phrases/i_love_anime.wav',),
    ItemModel(jpName: '', enName: 'I love programming', sound: 'sounds/phrases/i_love_programming.wav',),
    ItemModel(jpName: '', enName: 'Programming is easy', sound: 'sounds/phrases/programming_is_easy.wav',),
    ItemModel(jpName: '', enName: 'What is your name', sound: 'sounds/phrases/what_is_your_name.wav',),
    ItemModel(jpName: '', enName: 'Where are you doing', sound: 'sounds/phrases/where_are_you_going.wav',),
    ItemModel(jpName: '', enName: 'Yes i\'m coming', sound: 'sounds/phrases/yes_im_coming.wav',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharses'),
        backgroundColor: appBarColor,
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
              item: phrasesList[index],
              color: phraseTabColor,
          );
        },
      ),
    );
  }
}
