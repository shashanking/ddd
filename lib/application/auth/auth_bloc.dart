import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ddd/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;
  AuthBloc(this._iAuthFacade) : super(const _Initial()) {
    on<CheckUserRequest>(_checkUserRequest);
    on<SignOut>(_signOut);
  }

  FutureOr<void> _checkUserRequest(
      CheckUserRequest event, Emitter<AuthState> emit) async {
    final userOption = await _iAuthFacade.getSignedInUser();
    emit(userOption.fold(() => const AuthState.unauthenticated(),
        (_) => const AuthState.authenticated()));
    userOption.fold(() => null, (a) => print(a.uid));
  }

  FutureOr<void> _signOut(SignOut event, Emitter<AuthState> emit) async {
    await _iAuthFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
