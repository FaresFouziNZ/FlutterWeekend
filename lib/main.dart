import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/driver_details_view.dart';
import 'package:flutter_application_1/screens/login_view.dart';

import 'package:flutter_application_1/screens/drivers_list_view.dart';
import 'package:flutter_application_1/screens/profile.dart';
import 'become_wld/become_wld_dirh.dart';
import 'onboarding/onboarding_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileView(),
  ));
}
