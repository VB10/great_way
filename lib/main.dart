import 'package:flutter/material.dart';

import 'features/login/view/login.dart';
import 'product/init/product_init.dart';

void main() {
  ProductInitialze().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Login(),
    );
  }
}
