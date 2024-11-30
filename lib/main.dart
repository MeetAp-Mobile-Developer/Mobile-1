import 'package:flutter/material.dart';
import 'package:wm1/detail_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DetailProduct(),
    );
  }
}
