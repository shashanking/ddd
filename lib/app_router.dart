import 'package:auto_route/auto_route.dart';
import 'package:ddd/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashPage.page, path: '/splash', initial: true),
        AutoRoute(page: SignInPage.page, path: '/sign-in'),
        AutoRoute(page: NotesPage.page, path: '/notes'),
      ];
}
