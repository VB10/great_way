import 'package:hive_flutter/adapters.dart';
import 'package:vexana/vexana.dart';

import '../../../product/constant/hive_type_constant.dart';

part 'login_request_model.g.dart';

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

@HiveType(typeId: HiveTypeConstant.userResponse)
class UserResponseModel extends INetworkModel<UserResponseModel> {
  @HiveField(0)
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
