class Category {
  String category;

  //Constructor
  Category({
    this.category,
  });

  Category.fromJson(Map<String, dynamic> json) {
    category = json['category'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    return data;
  }
}
