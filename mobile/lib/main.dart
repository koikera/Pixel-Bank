import 'dart:async';
import 'package:flutter/material.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());

  Future.delayed(const Duration(seconds: 1), () async {
  });

}
