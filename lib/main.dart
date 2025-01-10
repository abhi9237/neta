import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neta/core/constants/color_constant.dart';
import 'package:neta/feature/presentation/pages/auth_ui/auth_selection/auth_selection_ui.dart';

import 'config/router/app_route.dart';
import 'core/bloc_providers/bloc_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColorConstant.whiteColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: SignInScreen(),
      ),
    );
  }
}
