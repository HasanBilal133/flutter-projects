import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  IconContent({required this.myIcon, required this.label});
  final Icon myIcon;
  final Text label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: myIcon,
        ),
        SizedBox(height: 20.0,),
        Expanded(
            child: label
        ),
      ],
    );
  }
}


