import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/auth/auth_failures.dart';
import 'package:ddd/domain/auth/i_auth_facade.dart';
import 'package:ddd/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _iauthFacade;
  @override
  SignInFormBloc(this._iauthFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<SignInWithEmailAndPassword>(_signInWithEmailAndPassword);
    on<SignUpWithEmailAndPassword>(_signUpWithEmailAndPassword);
    on<SignUpWithGoogle>(_signUpWithGoogle);
  }

  FutureOr<void> _emailChanged(
    EmailChanged event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(state.copyWith(
      emailStr: EmailAddress(event.emailStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _passwordChanged(
    PasswordChanged event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(state.copyWith(
      passwordStr: Password(event.passwordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _signInWithEmailAndPassword(
    SignInWithEmailAndPassword event,
    Emitter<SignInFormState> emit,
  ) async {
    _performActionOnIAuthFacadeWithEmailAndPassword(
      forwardedCall: _iauthFacade.signInWithEmailAndPassword,
    );
  }

  FutureOr<void> _signUpWithEmailAndPassword(
    SignUpWithEmailAndPassword event,
    Emitter<SignInFormState> emit,
  ) async {
    _performActionOnIAuthFacadeWithEmailAndPassword(
      forwardedCall: _iauthFacade.signUpWithEmailAndPassword,
    );
  }

  FutureOr<void> _signUpWithGoogle(
    SignUpWithGoogle event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final responseWithSuccessOrFailure = await _iauthFacade.signInWithGoogle();
    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(responseWithSuccessOrFailure),
    ));
  }

  FutureOr<void> _performActionOnIAuthFacadeWithEmailAndPassword({
    required Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress email,
      required Password password,
    }) forwardedCall,
  }) async {
    final isEmailValid = state.emailStr.isValid();
    final isPasswordValid = state.passwordStr.isValid();
    Either<AuthFailure, Unit> responseWithSuccessOrFailure = right(unit);
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      responseWithSuccessOrFailure = await forwardedCall(
        email: state.emailStr,
        password: state.passwordStr,
      );
    }
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(responseWithSuccessOrFailure),
    ));
  }
}
