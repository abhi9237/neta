import 'package:go_router/go_router.dart';
import 'package:neta/config/route_constant/route_constant.dart';
import 'package:neta/feature/presentation/pages/auth_ui/sign_in.dart';

abstract class AppRouter {
  static GoRouter router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
        path: RouteConstant.login,
        name: RouteConstant.login,
        builder: (context, state) {
          return SignInScreen();
        }),
  ]);
}
