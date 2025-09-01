import 'package:flutter/material.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.white,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/maskgroup.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
