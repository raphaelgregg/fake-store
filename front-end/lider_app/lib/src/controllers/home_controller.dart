import 'package:lider_app/src/model/products.dart';
import 'package:lider_app/src/repositories/products_repository.dart';

class HomeController {
  List<Product> products = [];
  final ProductsRepository _repositoryProducts;

  HomeController([ProductsRepository repositoryProducts])
      : _repositoryProducts = repositoryProducts ?? ProductsRepository();

  HomeState state = HomeState.start;

  Future start() async {
    state = HomeState.loading;
    try {
      products = await _repositoryProducts.findAll();
      state = HomeState.success;
    } catch (e) {
      state = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }
