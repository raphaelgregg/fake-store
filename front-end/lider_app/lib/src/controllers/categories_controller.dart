import 'package:lider_app/src/model/categories.dart';
import 'package:lider_app/src/repositories/categories_repository.dart';

class CategoriesController {
  List<Category> products = [];
  final CategoriesRepository _repositoryCategories;

  CategoriesController([CategoriesRepository repositoryCategories])
      : _repositoryCategories = repositoryCategories ?? CategoriesRepository();

  CategoryState state = CategoryState.start;

  Future start() async {
    state = CategoryState.loading;
    try {
      products = await _repositoryCategories.findAll();
      state = CategoryState.success;
    } catch (e) {
      state = CategoryState.error;
    }
  }
}

enum CategoryState { start, loading, success, error }
