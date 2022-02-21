import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/buttons.dart';

import 'package:page_transition/page_transition.dart';
import './SignUpPage.dart';
import './SingInPage.dart';

class HomePage extends StatefulWidget {
  final String pageTitle;

  const HomePage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //TODO : add Image for HomePage Start :
          Image.asset('images/gas.png', width: 220, height: 220),
          Container(
            margin: const EdgeInsets.only(bottom: 10, top: 0),
            //TODO : change the name of Start page And Font Style :
            child: const Text('FTM.CO', style: logoStyle),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.only(bottom: 0),
            child: ftmFlatBtn('Sign In', () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      // Page Transition Function
                      type: PageTransitionType.leftToRightWithFade,
                      duration: const Duration(seconds: 1),
                      child: SignInPage(
                        pageTitle: 'SignInPage',
                      )));
            }),
          ),
          Container(
            width: 200,
            padding: const EdgeInsets.all(0),
            child: ftmOutlineBtn('Sign Up', () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRightWithFade,
                      duration: const Duration(seconds: 1),
                      child: const SignUpPage(
                        pageTitle: 'SignUpPage',
                      )));
              Navigator.of(context).pushReplacementNamed('/signup');
            }),
          ),
        ],
      )),
      backgroundColor: bgColor2,
    );
  }
}
