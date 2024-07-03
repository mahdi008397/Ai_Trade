import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Text(
          'میگن فقط کونیا میتونن این متنو بخونن',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
