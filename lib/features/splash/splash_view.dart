import 'package:flutter/material.dart';
import 'package:great_way/product/constant/lottie_constant.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Lottie.asset(LottieConstant.login.rawValue));
  }
}
