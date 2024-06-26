import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rive/rive.dart';

import '../../app_router.gr.dart';

@RoutePage(name: 'SplashPage')
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            authenticated: (_) =>
                Future.delayed(const Duration(seconds: 3)).then((value) {
                  Fluttertoast.showToast(msg: 'Authenticated Successfully');
                  context.replaceRoute(const SignInPage());
                }),
            orElse: () =>
                Future.delayed(const Duration(seconds: 3)).then((value) {
                  Fluttertoast.showToast(msg: 'Unauthenticated');
                  context.replaceRoute(const SignInPage());
                }));
      },
      child: const RiveAnimation.asset(
        'assets/animations/bg.riv',
        fit: BoxFit.contain,
        useArtboardSize: true,
      ),
    );
  }
}
