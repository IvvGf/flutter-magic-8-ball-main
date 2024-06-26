import 'package:flutter/material.dart';
import 'package:custom_app_test/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    title: 'Magic 8 ball',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Magic 8 Ball App',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: const GradientContainer([Colors.deepPurple, Colors.white]),
    ),
  ));
}
