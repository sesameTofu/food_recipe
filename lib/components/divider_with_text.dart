import 'package:flutter/material.dart';
import 'package:food_recipe/core/library_style.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    Key? key,
    required this.label,
    required this.height,
  }) : super(key: key);

  final String label;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 75.0, right: 7),
              child: Divider(
                color: theme.color.gray4,
                height: height,
              )),
        ),
        Text(
          label,
          style: TextStyle(color: theme.color.gray4, fontSize: 12),
        ),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 7, right: 75.0),
              child: Divider(
                color: theme.color.gray4,
                height: height,
              )),
        ),
      ],
    );
  }
}
