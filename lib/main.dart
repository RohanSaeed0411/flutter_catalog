import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
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
        primarySwatch: Colors.purple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
    ),
      initialRoute: '/',
      routes: {
        '/' : (context)=> const HomePage(),
        '/login' : (context) => const LoginPage(),
      },
    );
  }
}

