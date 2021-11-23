enum LottieConstant { login, welcome }

extension LottieConstantExtension on LottieConstant {
  String get _value {
    switch (this) {
      case LottieConstant.login:
        return 'profile';
      case LottieConstant.welcome:
        return 'welcome';
    }
  }

  String get rawValue => 'assets/lottie/$_value.json';
}
