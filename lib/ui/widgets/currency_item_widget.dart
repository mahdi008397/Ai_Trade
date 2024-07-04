import 'dart:ui';

import 'package:flutter/material.dart';

class CurrencyItemWidget extends StatelessWidget {
  const CurrencyItemWidget({super.key, this.name});

  final String? name;
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 30, sigmaX: 30),
        child: Container(
          width: screenW,
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromRGBO(67, 60, 144, 1), width: 0.5),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Text(name!),
        ),
      ),
    );
  }
}
