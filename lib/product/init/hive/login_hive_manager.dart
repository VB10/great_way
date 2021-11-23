import 'package:great_way/features/login/model/user_response_model.dart';
import 'package:hive_flutter/adapters.dart';

abstract class IHiveManager<T> {
  Future<void> openBox();
  Future<void> saveModel(T model);
  T? getModel();
  Future<void> clear();
}

class LoginHiveManager implements IHiveManager<UserResponseModel> {
  late Box<UserResponseModel> _userBox;
  final String _tokenKey = 'token';

  @override
  Future<void> openBox() async {
    _userBox = await Hive.openBox<UserResponseModel>(runtimeType.toString());
  }

  @override
  Future<void> saveModel(UserResponseModel model) async {
    await _userBox.put(_tokenKey, model);
  }

  @override
  UserResponseModel? getModel() {
    return _userBox.get(_tokenKey);
  }

  @override
  Future<void> clear() async {
    await _userBox.clear();
  }
}
