import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CurrencyItemSkeleton extends StatelessWidget {
  const CurrencyItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    //double screenH = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SkeletonLine(
        style: SkeletonLineStyle(
          width: screenW,
          height: 56,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
