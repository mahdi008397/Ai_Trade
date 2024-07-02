import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenW,
        height: screenH,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back.png'), fit: BoxFit.cover),
        ),
        child: Container(
          width: screenW,
          height: screenH,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(0, 0, 0, 0.4),
              Color.fromRGBO(43, 3, 67, 0.7)
            ], stops: [
              0.39,
              1
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenH * 0.088,
                ),
                const Text(
                  'Wellcome To',
                  style: TextStyle(
                    fontFamily: 'PoppinsMed',
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(200, 200, 200, 1),
                  ),
                ),
                Row(
                  children: [
                    GradientText(
                      'Ai Trade',
                      style: const TextStyle(
                        fontFamily: 'PoppinsMed',
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                      colors: const [
                        Color.fromRGBO(255, 88, 248, 1),
                        Color.fromRGBO(41, 242, 255, 1),
                        Color.fromRGBO(93, 79, 255, 1),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'assets/images/chart.png',
                      scale: 2,
                    ),
                  ],
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      width: screenW,
                      height: screenH * 0.3,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(63, 0, 102, 0.01),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(123, 90, 255, 1),
                              Color.fromRGBO(255, 88, 248, 1)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 25,
                            left: screenW * 0.024,
                            right: screenW * 0.024,
                            bottom: 10),
                        child: Column(
                          children: [
                            const Text(
                              'Start analyzing and reviewing',
                              style: TextStyle(
                                fontFamily: 'PoppinsMed',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(200, 200, 200, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              'You can analyze the buying and selling of digital\ncurrencies with Ai Trade',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'PoppinsReg',
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(235, 235, 235, 1),
                              ),
                            ),
                            const Spacer(),
                            SlideAction(
                              borderRadius: 10,
                              elevation: 0,
                              height: 70,
                              innerColor:
                                  const Color.fromRGBO(177, 170, 255, 1),
                              outerColor:
                                  const Color.fromRGBO(143, 90, 212, 0.3),
                              sliderButtonIcon: Image.asset(
                                'assets/images/slide.png',
                                scale: 2,
                              ),
                              text: "Get started new",
                              sliderRotate: false,
                              textStyle: const TextStyle(
                                fontFamily: 'PoppinsReg',
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'Get started new',
                                      style: TextStyle(
                                        fontFamily: 'PoppinsReg',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/slide2.png',
                                      scale: 2,
                                    ),
                                  ],
                                ),
                              ),
                              onSubmit: () {
                                return null;

                                //do something
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenH * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
