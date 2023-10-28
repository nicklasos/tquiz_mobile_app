import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String? _token;

  set token(String? value) {
    _token = value;
  }

  String? get token => _token;
}
