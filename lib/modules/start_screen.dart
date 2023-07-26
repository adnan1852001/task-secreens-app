import 'dart:async';
import 'dart:ui';

import 'package:egypt_store/layout/cubit/cubit.dart';
import 'package:egypt_store/layout/status/status.dart';
import 'package:egypt_store/modules/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared/animation/animatio_start_screen.dart';
import '../shared/network/remote/final_navigator.dart';
import '../shared/styles/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> with TickerProviderStateMixin {
  late AnimationController controller1;
  late AnimationController controller2;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;

  @override
  void initState() {
    super.initState();

    controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation1 = Tween<double>(begin: .1, end: .15).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });
    animation2 = Tween<double>(begin: .02, end: .04).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
      setState(() {});
    });

    controller2 = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 5,
      ),
    );
    animation3 = Tween<double>(begin: .41, end: .38).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });
    animation4 = Tween<double>(begin: 170, end: 190).animate(
      CurvedAnimation(
        parent: controller2,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
      setState(() {});
    });

    Timer(const Duration(milliseconds: 2500), () {
      controller1.forward();
    });

    controller2.forward();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocConsumer<ShopCubit,ShopStatus>(
      listener:(context, state) {

      },
      builder:(context, state){
        Future.delayed(const Duration(seconds: 10), () async {
          PushAndRemove(context ,nextScreen: const LoginScreen());
        });

         return Directionality(

          textDirection: TextDirection.ltr,
          child: Scaffold(
            backgroundColor:whiteColor,
            body: Stack(
              alignment: Alignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox(
                          height: size.height,
                          child: Stack(
                            children: [
                              Positioned(
                                top: size.height * .1,
                                left: size.width * .8,
                                child: CustomPaint(
                                  painter: MyPainter(animation4.value,secondaryColor,endColor),
                                ),
                              ),

                              Positioned(
                                top: size.height * .05,
                                left: size.width * (animation2.value + .23),
                                child: CustomPaint(
                                  painter: MyPainter(30,startColor,endColor),
                                ),
                              ),
                              Positioned(
                                top: size.height * .15,
                                left: size.width * (animation2.value + .22),
                                child: CustomPaint(
                                  painter: MyPainter(30,startColor,endColor),
                                ),
                              ),
                              Positioned(
                                top: size.height * .25,
                                left: size.width * (animation2.value + .32),
                                child: CustomPaint(
                                  painter: MyPainter(30,startColor,endColor),
                                ),
                              ),

                              Positioned(
                                top: size.height * .95,
                                left: size.width * (animation2.value + .62),
                                child: CustomPaint(
                                  painter: MyPainter(30,startColor,endColor),
                                ),
                              ),
                              Positioned(
                                top: size.height * .85,
                                left: size.width * (animation2.value + .55),
                                child: CustomPaint(
                                  painter: MyPainter(30,startColor,endColor),
                                ),
                              ),
                              Positioned(
                                top: size.height * .77,
                                left: size.width * (animation2.value + .40),
                                child: CustomPaint(
                                  painter: MyPainter(30,startColor,endColor),
                                ),
                              ),

                              Positioned(
                                top: size.height * .98,
                                left: size.width * .1,
                                child: CustomPaint(
                                  painter: MyPainter(animation4.value,secondaryColor,endColor),
                                ),
                              ),




                            ],
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:270),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/onboarding_image_2.png',
                        height: 300,
                        width:300 ,
                      ),
                      const Text( 'وفر وقتك مع إيجيبت ستور',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'font2',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }


}

