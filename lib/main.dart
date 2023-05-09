// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_application_12/page/login.dart';
import 'package:flutter_application_12/page/hello.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {
      '/': (context) => const hello(),
      '/second': (context) => const login(),
    });
  }
}
