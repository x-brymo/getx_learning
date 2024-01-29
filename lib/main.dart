import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter-app/counter_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CounterApp(),
    );
  }
}
