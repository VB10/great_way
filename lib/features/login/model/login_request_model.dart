import 'package:vexana/vexana.dart';

class LoginRequestModel {
  String? email;
  String? password;

  LoginRequestModel({this.email, this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}

class UserResponseModel extends INetworkModel<UserResponseModel> {
  String? token;

  UserResponseModel({this.token});

  UserResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  @override
  UserResponseModel fromJson(Map<String, dynamic> json) {
    return UserResponseModel.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return null;
  }
}
