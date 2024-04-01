// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:ddd/presentation/notes/notes_page.dart' as _i1;
import 'package:ddd/presentation/sign_in/sign_in_page.dart' as _i2;
import 'package:ddd/presentation/splash/splash.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    NotesPage.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.NotesPage(),
      );
    },
    SignInPage.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    SplashPage.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.NotesPage]
class NotesPage extends _i4.PageRouteInfo<void> {
  const NotesPage({List<_i4.PageRouteInfo>? children})
      : super(
          NotesPage.name,
          initialChildren: children,
        );

  static const String name = 'NotesPage';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SignInPage]
class SignInPage extends _i4.PageRouteInfo<void> {
  const SignInPage({List<_i4.PageRouteInfo>? children})
      : super(
          SignInPage.name,
          initialChildren: children,
        );

  static const String name = 'SignInPage';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashPage]
class SplashPage extends _i4.PageRouteInfo<void> {
  const SplashPage({List<_i4.PageRouteInfo>? children})
      : super(
          SplashPage.name,
          initialChildren: children,
        );

  static const String name = 'SplashPage';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
