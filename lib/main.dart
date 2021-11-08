import 'package:flutter/material.dart';
import 'package:great_way/features/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const Login(),
    );
  }
}
