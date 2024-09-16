import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final int amount;
  final String category;
  final String image;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.amount,
    required this.category,
    required this.image,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props =>
      [name, amount, category, image, isRecommended, isPopular];

  static List<Product> product = [
    const Product(
      name: "Zara Black Plain Oversized T-Shirt",
      amount: 499,
      category: 'T-Shirt',
      image:
          'https://images.unsplash.com/photo-1502389614483-e475fc34407e?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: "H&M Oversized White",
      amount: 699,
      category: 'T-Shirt',
      image:
          'https://images.unsplash.com/photo-1527719327859-c6ce80353573?q=80&w=2564&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: "Levi's White Washed Slimfit Jeans",
      amount: 2579,
      category: 'Jeans',
      image:
          'https://images.unsplash.com/photo-1511105043137-7e66f28270e3?q=80&w=2564&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: "Roadster Black Denim Jacket",
      amount: 699,
      category: 'Jacket',
      image:
          'https://images.unsplash.com/photo-1600267188403-e6ab238d84a7?q=80&w=2576&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      isRecommended: false,
      isPopular: true,
    ),
    const Product(
      name: "Lee Cooper Baggy Jeans",
      amount: 3299,
      category: 'T-Shirt',
      image:
          'https://images.unsplash.com/photo-1512310604669-443f26c35f52?q=80&w=2534&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      isRecommended: false,
      isPopular: true,
    ),
    const Product(
      name: "Jack & Jones Denim Jacket",
      amount: 2292,
      category: 'Jacket',
      image:
          'https://images.unsplash.com/photo-1591213954196-2d0ccb3f8d4c?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      isRecommended: false,
      isPopular: true,
    ),
  ];
}
