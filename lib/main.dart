import 'package:flutter/material.dart';
import 'package:ftm_start_page/screens/ConfirmationPage.dart';
import 'package:ftm_start_page/screens/SignUpPage.dart';
import './screens/SingInPage.dart';
import './screens/HomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FTM.CO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(pageTitle: 'Welcome'),
      routes: <String, WidgetBuilder> {
        '/signin': (BuildContext context) =>  SignInPage(pageTitle: 'SignInPage',),
        '/signup': (BuildContext context) =>  SignUpPage(pageTitle: 'SignUpPage',),
        '/confirmpage': (BuildContext context) =>  ConfirmationPage(pageTitle: 'ConfirmationPage',),
      },
    );
  }
}
