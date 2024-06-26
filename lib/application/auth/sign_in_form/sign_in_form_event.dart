part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.signInWithEmailAndPassword() =
      SignInWithEmailAndPassword;
  const factory SignInFormEvent.signUpWithEmailAndPassword() =
      SignUpWithEmailAndPassword;
  const factory SignInFormEvent.signUpWithGoogle() = SignUpWithGoogle;
}
