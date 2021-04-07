import 'package:catalog/routes.dart';
import 'package:catalog/screens/home_screen.dart';
import 'package:catalog/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      ///
      /// Light theme properties
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      ///
      /// Routes
      initialRoute: AppRoutes.loginScreen,
      routes: {
        /// slash shows by default route
        AppRoutes.homeScreen:(context)=>HomeScreen(),
        AppRoutes.loginScreen:(context)=>LoginScreen(),
      },
    );
  }
}
