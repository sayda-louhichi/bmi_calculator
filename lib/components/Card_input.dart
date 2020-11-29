import 'package:flutter/material.dart';

class Card_input extends StatelessWidget {
  Card_input({@required this.couleur, this.fils, this.onPress});
  final Color couleur;
  final Widget fils;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: fils,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: couleur,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}