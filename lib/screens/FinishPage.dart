import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/buttons.dart';

import 'package:page_transition/page_transition.dart';
import './SignUpPage.dart';
import './SingInPage.dart';

class FinishPage extends StatefulWidget {
  final String pageTitle;

  const FinishPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _FinishPageState createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //TODO : add Image for HomePage Start :
            Container(
              child: Image.asset('images/ftm.png', width: 260, height: 210),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 0),
              //TODO : change the name of Start page And Font Style :
              child: const Text('همکار گرامی خسته نباشید', style: logoStyle),
            ),
          ],
        ),
      ),
      //backgroundColor: bgColor2,
    );
  }
}
