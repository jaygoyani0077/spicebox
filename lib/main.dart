import 'package:flutter/material.dart';
import 'package:spice_box/splash.dart';
import 'package:firebase_core/firebase_core.dart';
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MaterialApp(
        home: splash(),
        debugShowCheckedModeBanner: false
      )
  );
}