import 'package:flutter_test/flutter_test.dart';
import 'package:great_way/product/init/hive/login_hive_manager.dart';
import 'package:great_way/product/init/product_init.dart';
import 'package:great_way/features/login/model/login_request_model.dart';
import 'package:hive_flutter/adapters.dart';

void main() {
  late LoginHiveManager hiveManager;

  setUp(() async {
    Hive.init('documentPaths/');
    ProductInitialze().initAdapters();
    hiveManager = LoginHiveManager();
    await hiveManager.openBox();
  });
  test('Save Test token', () async {
    await hiveManager.saveModel(UserResponseModel(token: 'a'));
    expect(hiveManager.getModel(), isNotNull);
  });

  test('Get User', () async {
    expect(hiveManager.getModel(), isNotNull);
  });
}
