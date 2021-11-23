import 'package:flutter/material.dart';
import 'package:great_way/features/login/model/user_response_model.dart';
import 'package:great_way/features/login/view/login.dart';
import 'package:great_way/features/login/view/login_view.dart';
import 'package:great_way/features/welcome/view/welcome_view.dart';
import 'package:great_way/product/init/hive/login_hive_manager.dart';
import './splash.dart';
import 'package:kartal/kartal.dart';

mixin ISplashViewModel {
  Widget checkUserValidate(UserResponseModel? model);
}

abstract class SplashViewModel extends State<Splash> with ISplashViewModel {
  late LoginHiveManager _loginHiveManager;
  @override
  void initState() {
    super.initState();
    _loginHiveManager = LoginHiveManager();
    _controlToApp();
  }

  Future<void> _controlToApp() async {
    await _hiveInit();
    await Future.delayed(context.durationNormal);
    context.navigateToPage(checkUserValidate(_loginHiveManager.getModel()));
  }

  Future<void> _hiveInit() async {
    await _loginHiveManager.openBox();
  }
}
