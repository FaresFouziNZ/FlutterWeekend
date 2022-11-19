import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cloud_functions/auth_service.dart';
import 'package:provider/provider.dart';

import 'onboarding/onboarding_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(StreamProvider.value(
    value: Auth().user,
    initialData: null,
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    ),
  ));
}
