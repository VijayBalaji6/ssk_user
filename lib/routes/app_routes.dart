import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ssk/modules/error_route/error_route_screen.dart';
import 'package:ssk/modules/home/home_screen.dart';
import 'package:ssk/modules/login/login_screen.dart';
import 'package:ssk/modules/splash/splash_screen.dart';
import 'package:ssk/routes/route_constants.dart';

class AppRoutes {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter appRoutes = GoRouter(
    initialLocation: '/splash',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: false,
    errorPageBuilder: (context, state) =>
        errorRouteScreen(context: context, errorState: state),
    routes: [
      GoRoute(
        name: Routes.splashScreen,
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: Routes.loginScreen,
        path: '/login',
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        name: Routes.homeScreen,
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
