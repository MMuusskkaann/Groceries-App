import 'package:flutter/material.dart';

class Verificationpage extends StatefulWidget {
  const Verificationpage({super.key});

  @override
  State<Verificationpage> createState() => _VerificationpageState();
}

class _VerificationpageState extends State<Verificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              "Enter your 4-digit code",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                fontFamily: "Gilroy",
                height: 4,
              ),
            ),
          ),
          SizedBox(height: 4),
          Container(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              "Code",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "Gilroy",
                color: Colors.grey,
                // height: 2,
              ),
            ),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                // child: Text("+91"),
              ),
              SizedBox(width: 8),
              Container(
                width: 350,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  // obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
