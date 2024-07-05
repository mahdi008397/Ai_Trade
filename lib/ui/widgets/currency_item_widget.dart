import 'dart:ui';

import 'package:flutter/material.dart';

class CurrencyItemWidget extends StatelessWidget {
  const CurrencyItemWidget(
      {super.key, this.name, this.image, this.price, this.status});

  final String? name;
  final String? image;
  final String? price;
  final double? status;
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    //double screenH = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ClipRRect(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Image.network(image!),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name!,
                            style: const TextStyle(
                              fontFamily: 'PoppinsReg',
                              fontSize: 13,
                              color: Color.fromRGBO(222, 236, 245, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            "USD",
                            style: TextStyle(
                              fontFamily: 'PoppinsReg',
                              fontSize: 10,
                              color: Color.fromRGBO(222, 236, 245, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    price!,
                    style: const TextStyle(
                      fontFamily: 'PoppinsReg',
                      fontSize: 13,
                      color: Color.fromRGBO(222, 236, 245, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (status! >= 0) {
                        return Text(
                          '${status!.toStringAsFixed(2)}%',
                          style: const TextStyle(
                            fontFamily: 'PoppinsReg',
                            fontSize: 13,
                            color: Color.fromRGBO(102, 242, 124, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      } else {
                        return Text(
                          '${status!.toStringAsFixed(2)}%',
                          style: const TextStyle(
                            fontFamily: 'PoppinsReg',
                            fontSize: 13,
                            color: Color.fromRGBO(242, 102, 106, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
