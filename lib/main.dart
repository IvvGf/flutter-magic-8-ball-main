import 'package:flutter/material.dart';
import 'package:custom_app_test/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer([Colors.deepPurple, Colors.white]),
    ),
  ));
}
