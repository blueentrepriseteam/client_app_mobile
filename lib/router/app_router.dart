import 'package:client_app_mobile/config/log/logger.dart';
import 'package:client_app_mobile/my_home_page.dart';
import 'package:client_app_mobile/router/route_name.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RouteName.home.path,
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.home.path,
      name: RouteName.home.name,
      builder: (context, state) {
        appLogger.d('Navigating to ${state.matchedLocation}');
        return const MyHomePage();
      },
    ),
  ],
);
