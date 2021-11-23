import 'package:great_way/features/login/model/user_response_model.dart';
import 'package:hive_flutter/adapters.dart';

import '../../features/login/model/login_request_model.dart';

class ProductInitialze {
  Future<void> init() async {
    await Hive.initFlutter();
    initAdapters();
  }

  void initAdapters() {
    Hive.registerAdapter<UserResponseModel>(UserResponseModelAdapter());
  }
}
