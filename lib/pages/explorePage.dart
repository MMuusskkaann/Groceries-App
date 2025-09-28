import 'package:flutter/material.dart';

class explorePage extends StatefulWidget {
  const explorePage({super.key});

  @override
  State<explorePage> createState() => _explorePageState();
}

class _explorePageState extends State<explorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Explore Page coming soon...",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
