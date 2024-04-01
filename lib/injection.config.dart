// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:ddd/application/auth/auth_bloc.dart' as _i9;
import 'package:ddd/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i8;
import 'package:ddd/domain/auth/i_auth_facade.dart' as _i6;
import 'package:ddd/infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'package:ddd/infrastructure/core/injectable_module.dart' as _i10;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i3.FirebaseAuth>(() => injectableModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => injectableModule.firebaseFirestore);
    gh.lazySingleton<_i5.GoogleSignIn>(() => injectableModule.googleSignIn);
    gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
          firebaseAuth: gh<_i3.FirebaseAuth>(),
          googleSignIn: gh<_i5.GoogleSignIn>(),
        ));
    gh.factory<_i8.SignInFormBloc>(
        () => _i8.SignInFormBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i6.IAuthFacade>()));
    return this;
  }
}

class _$InjectableModule extends _i10.InjectableModule {}
