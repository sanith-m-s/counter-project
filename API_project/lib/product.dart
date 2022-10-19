class Product {
  final String name;
  final String id;

  const Product({
    required this.name,
    required this.id,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id':id,
      'name':name
    };
  }
}