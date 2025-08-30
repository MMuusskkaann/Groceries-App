import 'package:flutter/material.dart';
import 'package:groceriesapp/pages/onboardingpage.dart';

class SplashPage extends StatefulWidget {   // ✅ Capital S & P
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder:(context) => const Onboardingpage()),
      );
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF53B175),
      body: Center(
        child: Image.asset(
          "assets/images/splashlogo.png"
        ),
      )
      );
  }
}


