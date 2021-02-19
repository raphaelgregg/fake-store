import 'package:flutter_test/flutter_test.dart';
import 'package:lider_app/src/controllers/categories_controller.dart';
import 'package:lider_app/src/model/categories.dart';
import 'package:lider_app/src/repositories/categories_repository.dart';
import 'package:mockito/mockito.dart';

class CategoriesRepositoryMock extends Mock implements CategoriesRepository {}

main() {
  final repositoryCategories = CategoriesRepositoryMock();
  final controller = CategoriesController(repositoryCategories);

  test('deve trazer uma lista de categories', () async {
    when(repositoryCategories.findAll()).thenAnswer((_) async => [Category()]);

    expect(controller.state, CategoryState.start);
    await controller.start();
    expect(controller.state, CategoryState.success);
    expect(controller.products.isNotEmpty, true);
  });
}
