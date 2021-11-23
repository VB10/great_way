import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class EmailFormField extends TextFormField {
  static const String _errorText = 'Not valid eamil';
  EmailFormField({Key? key, required String label, required TextEditingController textEditingController})
      : super(
          key: key,
          controller: textEditingController,
          decoration: InputDecoration(labelText: label),
          validator: (value) => (value ?? '').isValidEmail ? null : _errorText,
        );
}
