import 'package:cgr_admin_flutter/routing/routes.dart';
import 'package:cgr_admin_flutter/ui/clients/widgets/client_screen.dart';
import 'package:cgr_admin_flutter/ui/clients/widgets/clients_screen.dart';
import 'package:cgr_admin_flutter/ui/home/widgets/home_screen.dart';
import 'package:cgr_core_flutter/cgr_core_flutter.dart';

GoRouter get routerConfig {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) {
          return CGRSplashScreen(
            acronym: 'CGR',
            appName: 'CGR Admin',
            nextScreen: AppRoutes.home,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) {
          return HomeScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.clients,
        builder: (context, state) {
          return ClientsScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.clientNew,
        builder: (context, state) {
          return ClientScreen();
        },
      ),
    ],
  );
}
