import 'dart:ffi';

class Product {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;

  Product(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'] is int
        ? (json['price'] as int).toDouble()
        : json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['image'] = this.image;
    return data;
  }
}

List<Product> products = [
  Product(
      id: 1,
      title: 'Produto 1',
      price: 1.10,
      category: 'categoria1',
      description: 'descrição1',
      image: 'assets/images/t1.png'),
  Product(
      id: 2,
      title: 'Produto 2',
      price: 2.20,
      category: 'categoria2',
      description: 'descrição2',
      image: 'assets/images/t2.png'),
  Product(
      id: 3,
      title: 'Produto 3',
      price: 3.30,
      category: 'categoria3',
      description: 'descrição3',
      image: 'assets/images/t3.png'),
  Product(
      id: 4,
      title: 'Produto 4',
      price: 4.40,
      category: 'categoria4',
      description: 'descrição4',
      image: 'assets/images/t4.png'),
  Product(
      id: 5,
      title: 'Produto 4',
      price: 4.40,
      category: 'categoria4',
      description: 'descrição4',
      image: 'assets/images/t5.png'),
  Product(
      id: 6,
      title: 'Produto 4',
      price: 4.40,
      category: 'categoria4',
      description: 'descrição4',
      image: 'assets/images/t6.png'),
  Product(
      id: 7,
      title: 'Produto 4',
      price: 4.40,
      category: 'categoria4',
      description: 'descrição4',
      image: 'assets/images/t5.png'),
  Product(
      id: 8,
      title: 'Produto 4',
      price: 4.40,
      category: 'categoria4',
      description: 'descrição4',
      image: 'assets/images/t2.png'),
];
