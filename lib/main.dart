import 'package:catalog/routes.dart';
import 'package:catalog/screens/home_screen.dart';
import 'package:catalog/screens/login_screen.dart';
import 'package:catalog/widgets/theme.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      ///
      /// app theme
      themeMode: ThemeMode.light,
      ///
      /// Dark theme properties
      darkTheme: MyTheme.darkTheme(context),
      ///
      /// Light theme properties
      theme: MyTheme.lightTheme(context),
      ///
      /// Routes
      initialRoute: AppRoutes.homeScreen,
      routes: {
        /// slash shows by default route
        AppRoutes.homeScreen:(context)=>HomeScreen(),
        AppRoutes.loginScreen:(context)=>LoginScreen(),
      },
    );
  }
}
