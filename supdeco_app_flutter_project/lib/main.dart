import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Welcome/welcome_screen.dart';
import 'package:supdeco_app_flutter_project/constants.dart';
import 'package:supdeco_app_flutter_project/theme.dart';

import 'custom_labels.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: nomApplication,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      //home: WelcomeScreen(),
      //initialiser les pages de l'application avec le routeName.
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
