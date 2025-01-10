import 'package:go_router/go_router.dart';
import 'package:neta/config/route_constant/route_constant.dart';
import 'package:neta/feature/presentation/pages/auth_ui/auth_selection/auth_selection_ui.dart';
import 'package:neta/feature/presentation/pages/auth_ui/sign_up/sign_up_ui.dart';

import '../../feature/presentation/pages/auth_ui/otp_verification/otp_verification_ui.dart';
import '../../feature/presentation/pages/auth_ui/sign_in/sign_in.dart';

abstract class AppRouter {
  static GoRouter router =
      GoRouter(initialLocation: RouteConstant.authSelection, routes: [
    GoRoute(
        path: RouteConstant.authSelection,
        name: RouteConstant.authSelection,
        builder: (context, state) {
          return AuthSelectionUi();
        }),
    GoRoute(
        path: RouteConstant.login,
        name: RouteConstant.login,
        builder: (context, state) {
          return SignInUi();
        }),
    GoRoute(
        path: RouteConstant.signUp,
        name: RouteConstant.signUp,
        builder: (context, state) {
          return SignUpUi();
        }),
    GoRoute(
        path: RouteConstant.otpVerification,
        name: RouteConstant.otpVerification,
        builder: (context, state) {
          return OtpVerificationUi();
        }),
  ]);
}
