import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = KBackgroundButtonColor,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.75),
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
        side: BorderSide(color: kPrimaryColor)
      ),
      padding: padding,
      color: color,
      minWidth: 280,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey[900],
          fontSize: 15,
        ),
      ),
    );

  }
}