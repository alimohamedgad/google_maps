// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'phone_auth_cubit.dart';

@immutable
abstract class PhoneAuthState {}

class PhoneAuthInitial extends PhoneAuthState {}

class Loading extends PhoneAuthState {}

class PhoneNumberSubmitted extends PhoneAuthState {}

class ErrorOccurred extends PhoneAuthState {
  final String errorMsg;
  ErrorOccurred({
    required this.errorMsg,
  });
}

class PhoneOTPVerified extends PhoneAuthState {}
