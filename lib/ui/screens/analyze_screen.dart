import 'package:ai_trade/data/datasources/remote/ai_datasource.dart';
import 'package:ai_trade/locator.dart';
import 'package:flutter/material.dart';

class AnalyzeScreen extends StatefulWidget {
  const AnalyzeScreen({super.key});

  @override
  State<AnalyzeScreen> createState() => _AnalyzeScreenState();
}

class _AnalyzeScreenState extends State<AnalyzeScreen> {

  @override
  void initState() {    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(26, 17, 52, 1),
    );
  }
}
