import 'package:flutter/material.dart';
import 'package:delivery/core/constant/color.dart';

class CoustomButtonAppBar extends StatelessWidget {
  final Function()? onPressed;
  final IconData iconButton;
  final bool active;
  final String textbutton;
  const CoustomButtonAppBar(
      {super.key,
      required this.onPressed,
      required this.iconButton,
      required this.active,
      required this.textbutton});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconButton,
            color:
                active == true ? Appcolor.colorshome : Appcolor.colorsHometow,
            size: active == true ? 35 : 20,
          ),
          Text(
            textbutton,
            style: TextStyle(
                color: active == true
                    ? Appcolor.colorshome
                    : Appcolor.colorsHometow),
          )
        ],
      ),
    );
  }
}
