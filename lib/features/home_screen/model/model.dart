class Product {
  final String name;
  final String image;
  final String price;
  final String people;
   double rating;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.people,
    this.rating =4.0
  });
}
