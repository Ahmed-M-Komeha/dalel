import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delaydNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.resourceImagesDalel,
          width: 152,
        ),
      ),
    );
  }
}

void delaydNavigate(context) {
  Future.delayed(Duration(seconds: 2), () {
    customReplacementNavigate(context, "/OnBoarding");
  });
}
