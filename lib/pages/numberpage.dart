import 'package:flutter/material.dart';
import 'package:groceriesapp/pages/verificationpage.dart';

class Numberpage extends StatefulWidget {
  const Numberpage({super.key});

  @override
  State<Numberpage> createState() => _NumberpageState();
}

class _NumberpageState extends State<Numberpage> {
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
              "Enter your mobile number",
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
              "Mobile Number",
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
                child: Text("+91"),
              ),
              SizedBox(width: 8),
              Container(
                width: 300,
                child: TextField(
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

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Verificationpage()),
              );
            },
            child: Text("Next"),
          ),
        ),
      ),
    );
  }
}
