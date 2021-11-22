import 'package:flutter_test/flutter_test.dart';
import 'package:great_way/features/login/model/login_request_model.dart';
import 'package:great_way/features/login/service/login_service.dart';
import 'package:great_way/product/constant/app_constant.dart';
import 'package:vexana/vexana.dart';

void main() {
  late ILoginService loginService;
  setUp(() {
    loginService = LoginService(
      NetworkManager(options: BaseOptions(baseUrl: AppConstant.networkBaseUrl), isEnableLogger: true),
    );
  });
  test('Try to login service', () async {
    final response =
        await loginService.controlUser(model: LoginRequestModel(email: 'eve.holt@reqres.in', password: 'cityslicka'));

    expect(response?.token, isNotNull);
  });
}
