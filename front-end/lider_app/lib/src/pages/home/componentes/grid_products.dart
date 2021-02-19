import 'package:flutter/material.dart';
import 'package:lider_app/src/constrants.dart';
import 'package:lider_app/src/model/products.dart';
import 'package:lider_app/src/pages/home/componentes/item_card.dart';

class GridProducts extends StatefulWidget {
  @override
  _GridProductsState createState() => _GridProductsState();
}

class _GridProductsState extends State<GridProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPaddin,
              crossAxisSpacing: kDefaultPaddin,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],

              // press: () => Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Details(
              //       product: products[index],
              //     ),
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
