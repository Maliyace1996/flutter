//import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Login/login_screen.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Signup/signup_screen.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Welcome/welcome_screen.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Forgot_password/forgot_password_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
