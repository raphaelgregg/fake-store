import 'package:dio/dio.dart';
import 'package:lider_app/src/model/categories.dart';

class CategoriesRepository {
  final dio = Dio();
  final url = 'http://localhost:3333/products/categories';
  // final url = 'https://fakestoreapi.com/products/categories';

  Future<List<Category>> findAll() async {
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final jsonData = response.data as List;

      List<Category> categories = [];

      for (var json in jsonData) {
        final category = Category.fromJson(json);
        categories.add(category);
      }

      return categories;
    } else {
      throw Exception("Fail to conected api");
    }
  }
}
