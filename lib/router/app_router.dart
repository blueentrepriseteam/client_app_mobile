import 'package:client_app_mobile/config/log/logger.dart';
import 'package:client_app_mobile/router/route_name.dart';
import 'package:client_app_mobile/screen/auth/pages/signin_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RouteName.signin.path,
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.signin.path,
      name: RouteName.signin.name,
      builder: (context, state) {
        appLogger.d('Navigating to ${state.matchedLocation}');
        return const SigninPage();
      },
    ),
  ],
);
