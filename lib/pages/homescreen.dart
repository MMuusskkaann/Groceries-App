import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 80,
      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 30,left: 105),
      //     child: Image.asset(
      //       "assets/images/carrot.png",
      //        height: 45,
      //     ),
      //   ),
      // ),

      // body: Padding(
      //   padding: const EdgeInsets.only(top: 2,left: 150),
      //   child: Text("Dhaka,Banarase",
      //   style: TextStyle(
      //     color: Colors.black,
      //     fontSize: 19,
      //     height: 2,
      //   ),
      //   ),
      // ),
    );
  }
}
