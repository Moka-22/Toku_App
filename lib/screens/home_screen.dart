import 'package:flutter/material.dart';
import 'package:languageslearningapp/screens/color_screen.dart';
import 'package:languageslearningapp/screens/familymembers_screen.dart';
import 'package:languageslearningapp/screens/numbers_screen.dart';
import 'package:languageslearningapp/screens/pharses_screen.dart';
import 'package:languageslearningapp/utils/colors.dart';
import 'package:languageslearningapp/widgets/widgets_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: numberTabColor,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return NumbersScreen();
              }));
            },
          ),
          Category(
            text: 'FamilyMembers',
            color: familyTabColor,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return FamilyMembersScreen();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: colorTabColor,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return ColorsScreen();
              }));
            },
          ),
          Category(
            text: 'Phrases',
            color: phraseTabColor,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return PhrasesScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
