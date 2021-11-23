import 'package:flutter/material.dart';
import 'package:great_way/features/splash/splash_view.dart';

import 'features/login/view/login.dart';
import 'features/splash/splash.dart';
import 'product/init/product_init.dart';

Future<void> main() async {
  await ProductInitialze().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Splash(),
    );
  }
}
