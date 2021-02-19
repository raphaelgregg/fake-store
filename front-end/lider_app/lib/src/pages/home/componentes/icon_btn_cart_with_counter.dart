import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lider_app/src/constrants.dart';

class IconBtnCartWithCounter extends StatelessWidget {
  const IconBtnCartWithCounter({
    Key key,
    @required this.svgSrc,
    this.numOfitem = 0,
    @required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(1),
            height: 30,
            width: 30,
            // decoration: BoxDecoration(
            //   color: kSecondaryColor.withOpacity(0.1),
            //   shape: BoxShape.circle,
            // ),
            child: SvgPicture.asset(
              svgSrc,
              color: kPrimaryColor,
            ),
          ),
          if (numOfitem != 0)
            Positioned(
              top: -3,
              right: -3,
              child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
