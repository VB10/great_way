import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PasswordFormField extends TextFormField {
  static const String _errorText = 'Password need minumum six length';
  PasswordFormField({Key? key, required String label, required TextEditingController textEditingController})
      : super(
          key: key,
          obscureText: true,
          controller: textEditingController,
          decoration: InputDecoration(labelText: label),
          validator: (value) => (value ?? '').length > 6 ? null : _errorText,
        );
}
