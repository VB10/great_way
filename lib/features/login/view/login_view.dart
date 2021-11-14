import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:great_way/features/login/view_model/login_view_model.dart';

import 'package:kartal/kartal.dart';
part './login_keys.dart';

class LoginView extends LoginViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark),
      body: Padding(
        padding: context.paddingMedium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 2),
            Text(_LoginKeys.welcome.rawValue, style: context.textTheme.headline4),
            Text(_LoginKeys.signInDetail.rawValue, style: context.textTheme.subtitle2),
            const Spacer(),
            TextFormField(decoration: InputDecoration(labelText: _LoginKeys.email.rawValue)),
            TextFormField(decoration: InputDecoration(labelText: _LoginKeys.password.rawValue)),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: () {}, child: Text(_LoginKeys.forgot.rawValue))),
            const Divider(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                onPressed: () {},
                child: Text(_LoginKeys.signin.rawValue)),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
