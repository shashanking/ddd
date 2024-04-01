// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/auth/auth_failures.dart';
import 'package:ddd/domain/auth/user.dart' as domain;
import 'package:ddd/domain/auth/value_objects.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:ddd/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';
import './firebase_user_mapper.dart' as mapper;

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  FirebaseAuthFacade({
    required this.firebaseAuth,
    required this.googleSignIn,
  });

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    try {
      final emailStr = email.getORCrash;
      final passwordStr = password.getORCrash;
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email' ||
          e.code == 'wrong-password' ||
          e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(AuthFailure.serverFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    try {
      final emailStr = email.getORCrash;
      final passwordStr = password.getORCrash;
      await firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUser());
      } else {
        return left(AuthFailure.serverFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleSignInAuthentication = await googleUser.authentication;
      final authCredentials = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );
      await firebaseAuth.signInWithCredential(authCredentials);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Option<domain.User>> getSignedInUser() async =>
      optionOf(firebaseAuth.currentUser?.toDomain());

  @override
  Future<List<void>> signOut() => Future.wait([
        googleSignIn.signOut(),
        firebaseAuth.signOut(),
      ]);
}
