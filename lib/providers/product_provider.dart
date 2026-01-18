import 'package:flutter/material.dart';
import 'package:product_3d_showcase/models/product.dart';

class ProductProvider with ChangeNotifier {
  // Mock Data
  final Product _product = Product(
    id: 'p1',
    title: 'Sony WH-1000XM5',
    description: 'Industry-leading noise canceling with two processors controlling 8 microphones for unprecedented noise cancellation. Exceptional sound quality.',
    price: 349.99,
    rating: 4.9,
    glbPath: 'assets/models/product.glb',
  );

  int _selectedColorIndex = 0;
  int _quantity = 1;

  final List<Color> _availableColors = [
    const Color(0xFF1A1A1A), // Black
    const Color(0xFFF5F5Fdc), // Silver/Platinum
    const Color(0xFF003366), // Midnight Blue
  ];

  Product get product => _product;
  int get selectedColorIndex => _selectedColorIndex;
  int get quantity => _quantity;
  Color get selectedColor => _availableColors[_selectedColorIndex];
  List<Color> get availableColors => _availableColors;

  void selectColor(int index) {
    _selectedColorIndex = index;
    notifyListeners();
  }

  void incrementQuantity() {
    _quantity++;
    notifyListeners();
  }

  void decrementQuantity() {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners();
    }
  }
}
