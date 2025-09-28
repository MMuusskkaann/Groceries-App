import 'package:flutter/material.dart';

class accountPage extends StatefulWidget {
  const accountPage({super.key});

  @override
  State<accountPage> createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Account page coming soon...",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
