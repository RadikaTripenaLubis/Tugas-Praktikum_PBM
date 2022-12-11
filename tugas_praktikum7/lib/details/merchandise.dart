class Merchandise {
  final int? id;
  final String name;
  final String price;
  final int quantity;

  Merchandise(
      {this.id, required this.name, required this.price, this.quantity = 1});

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'quantity': quantity,
    };
  }

  factory Merchandise.fromMap(Map<String, Object?> map) {
    return Merchandise(
      id: map['id'] as int,
      name: map['name'] as String,
      price: map['price'] as String,
      quantity: map['quantity'] as int,
    );
  }
}
