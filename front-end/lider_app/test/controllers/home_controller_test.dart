import 'package:flutter_test/flutter_test.dart';
import 'package:lider_app/src/controllers/home_controller.dart';
import 'package:lider_app/src/model/products.dart';
import 'package:lider_app/src/repositories/products_repository.dart';
import 'package:mockito/mockito.dart';

class ProductsRepositoryMock extends Mock implements ProductsRepository {}

main() {
  final repositoryProducts = ProductsRepositoryMock();
  final controller = HomeController(repositoryProducts);

  test('deve preencher gridview com produtos', () async {
    when(repositoryProducts.findAll()).thenAnswer((_) async => [Product()]);

    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.success);
    expect(controller.products.isNotEmpty, true);
  });

  test('deve modificar o estado para error se a requisição falhar', () async {
    when(repositoryProducts.findAll()).thenThrow(Exception());

    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.error);
  });
}
