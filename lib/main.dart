import 'package:ekim17/anaSayfa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const anaUygulama());
}

class anaUygulama extends StatelessWidget {
  const anaUygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: anaSayfa1(),
    );
  }
}
