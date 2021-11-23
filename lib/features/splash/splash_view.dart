import 'package:flutter/material.dart';
import 'package:great_way/features/login/model/user_response_model.dart';
import 'package:great_way/features/login/view/login.dart';
import 'package:great_way/features/welcome/view/welcome_view.dart';
import 'package:great_way/product/constant/lottie_constant.dart';
import 'package:lottie/lottie.dart';
import './splash_view_model.dart';

class SplashView extends SplashViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Lottie.asset(LottieConstant.login.rawValue)));
  }

  @override
  Widget checkUserValidate(UserResponseModel? model) {
    return model != null ? const WelcomeView() : const Login();
  }
}
