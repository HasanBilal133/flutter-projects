import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({required this.cardChild, required this.cardColor,
    required this.onPressed});

  final Widget cardChild;
  final Color cardColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardChild,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}


