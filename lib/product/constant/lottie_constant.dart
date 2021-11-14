enum LottieConstant { login }

extension LottieConstantExtension on LottieConstant {
  String get _value {
    switch (this) {
      case LottieConstant.login:
        return 'profile';
    }
  }

  String get rawValue => 'assets/lottie/$_value.json';
}
