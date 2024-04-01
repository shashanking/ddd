part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkUserRequest() = CheckUserRequest;
  const factory AuthEvent.signOut() = SignOut;
}
