part of './login_view.dart';

enum _LoginKeys { welcome, signInDetail, email, password, forgot, signin }

extension on _LoginKeys {
  String get rawValue {
    switch (this) {
      case _LoginKeys.welcome:
        return 'Welcome!';
      case _LoginKeys.signInDetail:
        return 'Please Sign-in to contunie';
      case _LoginKeys.email:
        return 'Email';
      case _LoginKeys.password:
        return 'Password';
      case _LoginKeys.forgot:
        return 'Forgot Password ?';
      case _LoginKeys.signin:
        return 'Sign in!';
    }
  }
}
