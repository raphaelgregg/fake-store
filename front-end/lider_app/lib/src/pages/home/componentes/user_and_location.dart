import 'package:flutter/material.dart';
import 'package:lider_app/src/constrants.dart';

class UserAndLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin, horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 5, left: 8),
            child: Text("Bem vindo, Raphael",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: kTextLightColor),
              Text("Você está no Magazan Humaitá",
                  style: TextStyle(color: kTextLightColor)),
            ],
          )
        ],
      ),
    );
  }
}
