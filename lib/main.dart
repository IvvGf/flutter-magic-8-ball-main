import 'package:flutter/material.dart';
import 'package:custom_app_test/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    title: 'Magic 8 ball',
    home: Scaffold(
      body: GradientContainer([Colors.deepPurple, Colors.white]),
    ),
  ));
}
