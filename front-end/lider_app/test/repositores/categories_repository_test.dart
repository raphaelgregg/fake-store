// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:lider_app/src/repositories/categories_repository.dart';

// import 'package:lider_app/main.dart';

void main() {
  final categories = CategoriesRepository();

  test("deve trazer uma lista categorias", () async {
    var category = await categories.findAll();

    print(category[1].toString());
    expect(category[1], "jewelery");
  });
}
