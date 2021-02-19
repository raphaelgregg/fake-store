import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lider_app/src/constrants.dart';

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      color: kPurpleColor,
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white),
              color: Colors.transparent),
          child: TextField(
            onChanged: (value) => print(value),
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: Container(
                color: Colors.white,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/search.svg",
                      color: kPurpleColor),
                  color: Colors.transparent,
                ),
              ),
              hintText: "Buscar em toda loja",
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
