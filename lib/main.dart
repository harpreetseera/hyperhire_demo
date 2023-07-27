import 'package:flutter/material.dart';
import 'package:hyperhire_assignment/app_colors.dart';
import 'package:hyperhire_assignment/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String apptitle = 'HyperHire Demo';
    return MaterialApp(
      title: apptitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.appColor,
        fontFamily: "Noto",
      ),
      home: const HomePage(),
    );
  }
}
