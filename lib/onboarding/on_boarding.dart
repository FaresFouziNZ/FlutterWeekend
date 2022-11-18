import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        Container(
          child: Center(
            child: Text("! نورت التطبيق"),
          ),
          color: Color(0xFF00A6A6),
        ),
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/palmTrees.png"),
              fit: BoxFit.cover,
            )),
            child: Container(
              child: Column(
                children: [
                  Text("data"),
                  SizedBox(),
                  Text("data"),
                  Row(
                    children: [],
                  )
                ],
              ),
            )),
        Container(
          child: Image.asset("assets/palmTrees.png"),
          // color: Color(0xFF00A6A6),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black,
            ],
          )),
        )
      ],
    ));
  }
}
