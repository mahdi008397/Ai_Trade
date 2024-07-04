import 'dart:developer';
import 'dart:ui';

import 'package:ai_trade/bloc/home/home_bloc.dart';
import 'package:ai_trade/ui/widgets/currency_item_widget.dart';
import 'package:ai_trade/ui/widgets/main_cliper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scroll = ScrollController();
  bool titleShow = false;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(
      GetHomeRequest(),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 17, 52, 1),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (_scroll.position.pixels >= screenH * 0.7) {
            log('message');
            setState(() {
              titleShow = true;
            });
          } else {
            setState(() {
              titleShow = false;
            });
          }
          return true;
        },
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/home_back.png',
                scale: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/images/home_back2.png',
                  scale: 2,
                ),
              ),
            ),
            CustomScrollView(
              controller: _scroll,
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  expandedHeight: screenH * 0.768,
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: titleShow
                          ? Container(
                              width: screenW,
                              height: 0,
                              decoration: const BoxDecoration(
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(255, 255, 255, 0),
                                        Color.fromRGBO(117, 201, 255, 1),
                                        Color.fromRGBO(255, 255, 255, 0),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      stops: [0, 0.54, 1]),
                                  width: 1,
                                ),
                              ),
                            )
                          : Container(),
                    ),
                  ),
                  centerTitle: true,
                  title: titleShow
                      ? const Text(
                          'popular',
                          style: TextStyle(
                            fontFamily: 'PoppinsReg',
                            fontSize: 25,
                            color: Color.fromRGBO(117, 201, 255, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      : const Text(''),
                  leading: Image.asset(
                    'assets/images/info-ico.png',
                    scale: 2,
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/images/help-ico.png',
                        scale: 2,
                      ),
                    ),
                  ],
                  pinned: true,
                  leadingWidth: 84,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    stretchModes: const <StretchMode>[StretchMode.fadeTitle],
                    background: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaY: 30, sigmaX: 30),
                              child: Container(
                                width: screenW,
                                height: 365,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(35, 24, 69, 1),
                                          Color.fromRGBO(67, 60, 145, 1),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: [0.88, 1]),
                                    width: 1,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/home-vector.png',
                                  scale: 2,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                ClipPath(
                                  clipper: MainCliper(),
                                  child: Container(
                                    width: 370,
                                    height: 220,
                                    decoration: const BoxDecoration(
                                        // gradient: LinearGradient(
                                        //   colors: [
                                        //     Color.fromRGBO(89, 190, 255, 1),
                                        //     Color.fromRGBO(100, 0, 105, 1),
                                        //   ],
                                        //   begin: Alignment.topCenter,
                                        //   end: Alignment.bottomCenter,
                                        // ),
                                        ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'popular',
                            style: TextStyle(
                              fontFamily: 'PoppinsReg',
                              fontSize: 25,
                              color: Color.fromRGBO(117, 201, 255, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              width: screenW,
                              height: 0,
                              decoration: const BoxDecoration(
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(255, 255, 255, 0),
                                        Color.fromRGBO(117, 201, 255, 1),
                                        Color.fromRGBO(255, 255, 255, 0),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      stops: [0, 0.54, 1]),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state is HomeLoadingState) {
                          return const CircularProgressIndicator();
                        }
                        if (state is HomeSuccessState) {
                          return SizedBox(
                            height: screenH,
                            child: ListView.builder(
                              itemCount: state.data.display.length,
                              itemBuilder: (context, index) {
                                return CurrencyItemWidget(
                                  name:
                                      state.data.display.keys.elementAt(index),
                                  image:
                                      'https://www.cryptocompare.com${state.data.display.values.elementAt(index).usd!.imageurl!}',
                                  price: state.data.display.values
                                      .elementAt(index)
                                      .usd!
                                      .price!,
                                  status: state.data.raw.values
                                      .elementAt(index)
                                      .usd!
                                      .changepct24Hour!
                                      .toDouble(),
                                );
                              },
                            ),
                          );
                        }
                        if (state is HomeErrorState) {
                          return Text(state.errorText);
                        }
                        return Container();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
