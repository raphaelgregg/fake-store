import 'package:flutter/material.dart';
import 'package:lider_app/src/constrants.dart';
import 'package:lider_app/src/controllers/home_controller.dart';
import 'package:lider_app/src/pages/home/componentes/categories.dart';
import 'package:lider_app/src/pages/home/componentes/custom_line.dart';
import 'package:lider_app/src/pages/home/componentes/grid_products.dart';
import 'package:lider_app/src/pages/home/componentes/home_app_bar.dart';
import 'package:lider_app/src/pages/home/componentes/search_section.dart';
import 'package:lider_app/src/pages/home/componentes/user_and_location.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          CustomLine(),
          SearchSection(),
          UserAndLocation(),
          Categories(),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                  child: Text("Ordenar por: "),
                ),
              ],
            ),
          ),
          GridProducts()
          // GridProducts(),
        ],
      ),
    );
  }
}
