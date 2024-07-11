import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:ai_trade/bloc/home/home_bloc.dart';
import 'package:ai_trade/ui/widgets/currency_item_skeleton.dart';
import 'package:ai_trade/ui/widgets/currency_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scroll = ScrollController();
  bool titleShow = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(
      GetHomeRequest(),
    );
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      BlocProvider.of<HomeBloc>(context).add(
        GetHomeRequest(),
      );
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
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
              padding: EdgeInsets.only(bottom: screenH * 0.164),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/images/home_back2.png',
                  scale: 2,
                ),
              ),
            ),
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              controller: _scroll,
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  expandedHeight: screenH * 0.760,
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
                  leadingWidth: screenH * 0.092,
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
                                height: screenH * 0.4,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Color.fromRGBO(35, 24, 69, 1),
                                          Color.fromRGBO(67, 60, 145, 1),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: [0, 0.88, 1]),
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
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 30, sigmaY: 30),
                                    child: Container(
                                      width: screenW,
                                      height: screenH * 0.11,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(8)),
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                67, 60, 144, 1),
                                            width: 0.5),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color.fromRGBO(89, 190, 255, 0.1),
                                            Color.fromRGBO(100, 0, 105, 0.1),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/home-chart.png',
                                            scale: 2,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'Analysis with AI',
                                            style: TextStyle(
                                              fontFamily: 'PoppinsReg',
                                              fontSize: 25,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  117, 201, 255, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 30, sigmaY: 30),
                                        child: Container(
                                          width: screenW * 0.407,
                                          height: screenH * 0.11,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8)),
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    67, 60, 144, 1),
                                                width: 0.5),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color.fromRGBO(
                                                    89, 190, 255, 0.1),
                                                Color.fromRGBO(
                                                    100, 0, 105, 0.1),
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Lorem 1',
                                              style: TextStyle(
                                                fontFamily: 'PoppinsReg',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    117, 201, 255, 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 30, sigmaY: 30),
                                        child: Container(
                                          width: screenW * 0.407,
                                          height: screenH * 0.11,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8)),
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    67, 60, 144, 1),
                                                width: 0.5),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color.fromRGBO(
                                                    89, 190, 255, 0.1),
                                                Color.fromRGBO(
                                                    100, 0, 105, 0.1),
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Lorem 2',
                                              style: TextStyle(
                                                fontFamily: 'PoppinsReg',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    117, 201, 255, 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                          return SizedBox(
                            height: 5 * 76,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return const CurrencyItemSkeleton();
                              },
                            ),
                          );
                        }
                        if (state is HomeSuccessState) {
                          return SizedBox(
                            height: state.data.display.length * 76,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.data.display.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    context.go('/analyze');
                                  },
                                  child: CurrencyItemWidget(
                                    name: state.data.display.keys
                                        .elementAt(index),
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
                                  ),
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
