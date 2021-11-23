import 'package:flutter/material.dart';
import 'package:great_way/product/constant/lottie_constant.dart';
import 'package:lottie/lottie.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Lottie.asset(LottieConstant.welcome.rawValue)),
    );
  }
}
