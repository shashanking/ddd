import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

@RoutePage(name: 'SplashPage')
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: RiveAnimation.asset(
          'assets/animations/bg.riv',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
