import 'package:great_way/features/login/model/login_request_model.dart';
import 'package:great_way/features/login/model/user_response_model.dart';
import 'package:vexana/vexana.dart';

abstract class ILoginService {
  ILoginService(this.networkManager);

  Future<UserResponseModel?> controlUser({required LoginRequestModel model});
  final INetworkManager networkManager;

  final String _loginPath = '/login';
}

class LoginService extends ILoginService {
  LoginService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<UserResponseModel?> controlUser({required LoginRequestModel model}) async {
    final response = await networkManager.send<UserResponseModel, UserResponseModel>(_loginPath,
        data: model, parseModel: UserResponseModel(), method: RequestType.POST);

    return response.data;
  }
}
