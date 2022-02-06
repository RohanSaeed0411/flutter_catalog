import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/MyRoutes.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
    ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
    ),
      initialRoute: MyRoutes.login,
      routes: {
        MyRoutes.home : (context)=> const HomePage(),
        MyRoutes.login : (context) => const LoginPage(),
      },
    );
  }
}

