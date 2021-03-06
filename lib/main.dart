import 'package:flutter/material.dart';
import 'package:get_fit/pages/homescreen.dart';
import 'package:get_fit/pages/login_screen.dart';
import 'package:get_fit/pages/personal_data_screen.dart';
import 'package:get_fit/pages/register_screen.dart';


void main() {
  runApp(const ImperativeNavigationApp());
}

class ImperativeNavigationApp extends StatelessWidget {
  const ImperativeNavigationApp({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screens Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainPage(),
      routes: {
        "/loginpage": (context) => const LoginScreen(),
        "/registerpage": (context) => const RegisterScreen(),
        "/personaldatapage": (context) => const PersonalDataScreen(),
        "/homepage": (context) =>  const HomeScreen(),

      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is the main page!"),
            ElevatedButton(
              child: const Text("Go to Login Screen"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/loginpage",
                );
              },
            ),
            ElevatedButton(
              child: const Text("Go to Register Screen"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/registerpage",
                );
              },
            ),
        ElevatedButton(
          child: const Text("Go to Personal Data Screen"),
          onPressed: () {
            Navigator.pushNamed(
              context,
              "/personaldatapage",
            );
          },
        ),
            ElevatedButton(
              child: const Text("Go to HomeScreen"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/homepage",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}