import 'package:flutter/material.dart';
import 'package:lider_app/src/constrants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "smartwatch",
    "Jewellery",
    "Footwear",
    "Dresses",
    "smartwatch",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
        child: SizedBox(
          height: 55,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategory(index)),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              height: 55,
              width: 120,
              decoration: BoxDecoration(
                color:
                    selectedIndex == index ? kPrimaryColor : Colors.grey[300],
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                categories[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: selectedIndex == index ? Colors.white : kTextColor),
              ), //SvgPicture.asset(icon),
            ),
          ],
        ),
      ),
    );
  }
}
