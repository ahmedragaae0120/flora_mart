part of 'auth_cubit.dart';


sealed class AuthState {}


final class AuthInitial extends AuthState {}


///  FORGOT PASSWORD STATES  ///

final class SendEmailVerificationSuccessState extends AuthState {
  bool isSent;
  SendEmailVerificationSuccessState({required this.isSent});
}

final class SendEmailVerificationLoadingState extends AuthState {
  SendEmailVerificationLoadingState();
}

final class SendEmailVerificationErrorState extends AuthState {
  String? message;
  SendEmailVerificationErrorState({required this.message});
}

///  VERIFY RESET CODE STATES  ///

final class VerifyResetCodeSuccessState extends AuthState {
  bool isVerified;
  VerifyResetCodeSuccessState({required this.isVerified});
}

final class VerifyResetCodeLoadingState extends AuthState {
  VerifyResetCodeLoadingState();
}

final class VerifyResetCodeErrorState extends AuthState {
  String? message;
  VerifyResetCodeErrorState({required this.message});
}

///  PASSWORD RESET STATES  ///

final class ResetPasswordSuccessState extends AuthState {
  bool isChanged;
  ResetPasswordSuccessState({required this.isChanged});
}

final class ResetPasswordLoadingState extends AuthState {
  ResetPasswordLoadingState();
}

final class ResetPasswordErrorState extends AuthState {
  String? message;
  ResetPasswordErrorState({required this.message});
}