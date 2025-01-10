import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neta/feature/presentation/bloc/auth_selection_cubit/auth_selection_cubit.dart';

List<BlocProvider> get providers => [
      BlocProvider<AuthSelectionCubit>(
          create: (BuildContext context) => AuthSelectionCubit())
    ];
