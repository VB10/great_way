import 'package:vexana/vexana.dart';

class LoginRequestModel extends INetworkModel<LoginRequestModel?> {
  String? email;
  String? password;

  LoginRequestModel({this.email, this.password});

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }

  @override
  LoginRequestModel? fromJson(Map<String, dynamic> json) {
    return null;
  }
}
