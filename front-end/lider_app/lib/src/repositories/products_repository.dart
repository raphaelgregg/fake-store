import 'package:dio/dio.dart';
import 'package:lider_app/src/model/products.dart';

class ProductsRepository {
  Dio dio;
  // final url = 'https://fakestoreapi.com/products';
  final url = 'http://localhost:3333/products';

  ProductsRepository([Dio client]) {
    dio = client ?? Dio();
  }

  Future<List<Product>> findAll() async {
    final response = await dio.get(url);
    final jsonList = response.data as List;

    return jsonList.map((json) => Product.fromJson(json)).toList();
    // Refatoraçãod e codigo
    // List<Product> products = [];
    // for (var json in jsonList) {
    //   final product = Product.fromJson(json);
    //   products.add(product);
    // }
    // return products;
  }
}
