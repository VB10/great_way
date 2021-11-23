import 'package:great_way/product/constant/hive_type_constant.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vexana/vexana.dart';

part 'user_response_model.g.dart';

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
