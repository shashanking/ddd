import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ddd/injection.dart';
import 'package:ddd/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/appbar.dart';

@RoutePage(name: 'SignInPage')
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: const SignInForm(),
      ),
    );
  }
}
