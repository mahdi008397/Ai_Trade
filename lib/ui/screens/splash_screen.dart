import 'dart:ui';

import 'package:ai_trade/utils/first_user_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  _asyncMethod() async {
    bool status = await FirstUserManager.read();

    Future.delayed(const Duration(milliseconds: 3000), () {
      if (status) {
        context.go('/wellcome');
      } else {
        context.go('/home');
      }
    });
  }

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
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            width: screenW,
            height: screenH,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(11, 0, 28, 0.82),
            ),
            child: Column(
              children: [
                Container(
                  width: screenW,
                  height: screenH * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/splash-vector.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: screenH * 0.066,
                ),
                GradientText(
                  'Ai Trade',
                  colors: const [
                    Color.fromRGBO(255, 88, 248, 1),
                    Color.fromRGBO(41, 242, 255, 1),
                    Color.fromRGBO(93, 79, 255, 1),
                  ],
                  stops: const [0, 0.49, 0.6],
                  style: const TextStyle(
                    fontFamily: 'PoppinsMed',
                    fontWeight: FontWeight.w500,
                    fontSize: 43,
                  ),
                ),
                SizedBox(
                  height: screenH * 0.044,
                ),
                const Text(
                  'Expreience Secure Trading',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'PoppinsLig',
                    fontSize: 23,
                    color: Color.fromRGBO(200, 200, 200, 1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'with Ai Trade',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'PoppinsLig',
                        fontSize: 23,
                        color: Color.fromRGBO(200, 200, 200, 1),
                      ),
                    ),
                    Image.asset('assets/images/splash-ico.png'),
                  ],
                ),
                const Spacer(),
                Lottie.asset('assets/images/loading.json',
                    width: 60, height: 60),
                SizedBox(
                  height: screenH * 0.044,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
