import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:ddd/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app_router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.checkUserRequest())),
      ],
      child: MaterialApp.router(
        theme: ThemeData.light().copyWith(
            colorScheme: ColorScheme(
              primary: Colors.green.shade600,
              brightness: Brightness.light,
              onPrimary: Colors.black38,
              secondary: Colors.blueAccent,
              onSecondary: Colors.blueAccent,
              background: const Color.fromRGBO(255, 255, 255, 0.541),
              onBackground: Colors.black38,
              error: Colors.red,
              onError: Colors.red,
              surface: Colors.black87,
              onSurface: Colors.green.shade600,
            ),
            inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)))),
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
