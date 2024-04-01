import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                  (failure) => failure.map(
                    cancelledByUser: (value) =>
                        Fluttertoast.showToast(msg: 'Cancelled'),
                    serverFailure: (value) =>
                        Fluttertoast.showToast(msg: 'Server Failure'),
                    emailAlreadyInUser: (value) => Fluttertoast.showToast(
                        msg: 'Server Failure: Email already exisits'),
                    invalidEmailAndPasswordCombination: (value) =>
                        Fluttertoast.showToast(msg: 'Invalid Creds'),
                  ),
                  (r) => null,
                ));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              const Text(
                '📝',
                style: TextStyle(fontSize: 130),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                autocorrect: false,
                onChanged: (value) => context.read<SignInFormBloc>().add(
                      SignInFormEvent.emailChanged(value),
                    ),
                validator: (_) =>
                    context.watch<SignInFormBloc>().state.emailStr.value.fold(
                          (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context.read<SignInFormBloc>().add(
                      SignInFormEvent.passwordChanged(value),
                    ),
                validator: (_) => context
                    .watch<SignInFormBloc>()
                    .state
                    .passwordStr
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        shortPassword: (_) => 'Short Password',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          surfaceTintColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          backgroundColor: Colors.transparent),
                      onPressed: () => context.read<SignInFormBloc>().add(
                          const SignInFormEvent.signInWithEmailAndPassword()),
                      child: const Text('Sign In'),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          surfaceTintColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          backgroundColor: Colors.transparent),
                      onPressed: () => context.read<SignInFormBloc>().add(
                          const SignInFormEvent.signUpWithEmailAndPassword()),
                      child: const Text('Register'),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => context
                    .read<SignInFormBloc>()
                    .add(const SignInFormEvent.signUpWithGoogle()),
                child: const Text(
                  'Sign In With Google',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
