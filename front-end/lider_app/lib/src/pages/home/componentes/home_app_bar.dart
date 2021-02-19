import 'package:flutter/material.dart';
import 'package:lider_app/src/constrants.dart';
import 'package:lider_app/src/pages/home/componentes/icon_btn_cart_with_counter.dart';

AppBar buildAppBar() {
  return AppBar(
    // iconTheme: IconThemeData(color: Colors.blue[900], opacity: 1, size: 30),
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
      color: kPrimaryColor,
      iconSize: kIconSize,
    ),
    title: Image.asset(
      "assets/images/applogo.png",
      width: 200,
      height: 30,
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.store),
              onPressed: () {
                print("store");
              },
              color: kPrimaryColor,
              iconSize: kIconSize,
            ),
            IconBtnCartWithCounter(
              svgSrc: "assets/icons/cart.svg",
              numOfitem: 1,
              press: () {},
            ),
          ],
        ),
      ),
      SizedBox(
        width: kDefaultPaddin,
      )
    ],
  );
}
