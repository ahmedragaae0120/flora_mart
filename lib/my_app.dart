import 'package:easy_localization/easy_localization.dart';
import 'package:flora_mart/presentation/auth/forget_password/view/forget_password/view/forget_password_screen.dart';
import 'package:flora_mart/presentation/auth/forget_password/view/forget_password/view/reset_password_screen.dart';
import 'package:flora_mart/presentation/auth/forget_password/view/forget_password/view/verify_reset_code_screen.dart';
import 'package:flora_mart/presentation/auth/login/login_screen.dart';
import 'package:flora_mart/presentation/tabs/home_tab/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/theme/app_theme.dart';
import 'core/utils/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            RouteManager.homeScreen: (context) => HomeTabScreen(),
            RouteManager.loginScreen: (context) => LoginScreen(),
            RouteManager.forgetPasswordScreen: (context) =>
                ForgetPasswordScreen(),
            RouteManager.emailVerificationScreen: (context) =>
                VerifyResetCodeScreen(),
            RouteManager.resetPasswordScreen: (context) =>
                ResetPasswordScreen(),
          },
          initialRoute: RouteManager.forgetPasswordScreen,
          theme: AppTheme.lightTheme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        );
      },
    );
  }
}
