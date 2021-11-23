import 'package:flutter/material.dart';
import 'package:great_way/features/login/model/user_response_model.dart';
import 'package:great_way/features/login/service/login_service.dart';
import 'package:great_way/features/login/view/login.dart';
import 'package:great_way/features/welcome/view/welcome_view.dart';
import 'package:great_way/product/constant/app_constant.dart';
import 'package:great_way/product/init/hive/login_hive_manager.dart';
import 'package:vexana/vexana.dart';
import '../model/login_request_model.dart';
import 'package:kartal/kartal.dart';

abstract class LoginViewModel extends State<Login> {
  late TextEditingController loginTextController;
  late TextEditingController passwordTextController;
  final GlobalKey<FormState> formValidateKey = GlobalKey();
  late ILoginService loginService;

  late LoginHiveManager _loginHiveManager;

  bool isAutoValidate = false;
  bool isServiceLoading = false;
  @override
  void initState() {
    super.initState();
    loginTextController = TextEditingController();
    passwordTextController = TextEditingController();
    loginService = LoginService(NetworkManager(options: BaseOptions(baseUrl: AppConstant.networkBaseUrl)));
  }

  Future<void> controlUser(String email, String password) async {
    if (!_changeValidateModel()) return;
    _changeLoading();
    final response = await loginService.controlUser(model: LoginRequestModel(email: email, password: password));
    _changeLoading();
    await keepLocalUserResponse(response);
    _navigatePage(response);
  }

  void _navigatePage(UserResponseModel? response) {
    if (response != null) {
      context.navigateToPage(const WelcomeView());
    }
  }

  bool _changeValidateModel() {
    if (formValidateKey.currentState?.validate() ?? false) {
      return true;
    } else {
      _updateAutoValidate(true);
      return false;
    }
  }

  void _updateAutoValidate(bool val) {
    setState(() {
      isAutoValidate = val;
    });
  }

  void _changeLoading() {
    setState(() {
      isServiceLoading = !isServiceLoading;
    });
  }

  Future<bool> keepLocalUserResponse(UserResponseModel? model) async {
    if (model != null) {
      _loginHiveManager = LoginHiveManager();
      await _loginHiveManager.openBox();
      await _loginHiveManager.saveModel(model);
      return true;
    }
    return false;
  }
}
