import 'package:hive_flutter/adapters.dart';

import '../../features/login/model/login_request_model.dart';

class ProductInitialze {
  Future<void> init() async {
    await Hive.initFlutter();
  }

  void initAdapters() {
    Hive.registerAdapter<UserResponseModel>(UserResponseModelAdapter());
  }
}
