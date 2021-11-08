import 'package:great_way/features/login/model/login_request_model.dart';
import 'package:vexana/vexana.dart';

abstract class ILoginService {
  ILoginService(this.networkManager);

  Future<UserResponseModel?> controlUser({required LoginRequestModel model});
  final INetworkManager networkManager;

  final String _loginPath = '/api/login';
}

class LoginService extends ILoginService {
  LoginService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<UserResponseModel?> controlUser({required LoginRequestModel model}) async {
    final response = await networkManager.send<UserResponseModel, UserResponseModel>(_loginPath,
        parseModel: UserResponseModel(), method: RequestType.POST);

    return response.data;
  }
}
