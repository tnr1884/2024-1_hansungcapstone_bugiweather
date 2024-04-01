import 'package:flutter/material.dart';
import 'dust.dart'; // dust.dart에서 dustScreen을 import 합니다.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dust App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const dustScreen(), // dustScreen을 홈 화면으로 설정합니다.
    );
  }
}