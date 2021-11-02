import 'package:flutter/material.dart';

import '../constants.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = KSecondaryColor,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.2),
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      padding: padding,
      color: color,
      minWidth: 170,
      height: 30,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
    );

  }
}