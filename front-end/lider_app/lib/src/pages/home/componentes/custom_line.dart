import 'package:flutter/material.dart';
import 'package:lider_app/src/constrants.dart';

class CustomLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: double.maxFinite,
      color: kPrimaryColor,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 8,
          width: 20,
          color: Colors.red,
        ),
      ),
    );
  }
}
