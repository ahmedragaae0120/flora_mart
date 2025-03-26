
import 'package:easy_localization/easy_localization.dart';
import 'package:flora_mart/presentation/auth/forget_password/view/forget_password/view_model/auth_cubit.dart';
import 'package:flora_mart/presentation/auth/view_model/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/api/api_manager.dart';
import 'core/di/di.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();

  ApiManager.init();

  runApp(EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path:
      'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('en'),
      startLocale: Locale("en"),
      child: BlocProvider<AuthCubit>(
        create: (context) => getIt<AuthCubit>(),
        child: MyApp(),
      )));
}