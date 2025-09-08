import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
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
      // backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      // ),

      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/Rectangle.png", fit: BoxFit.cover),
          ),
          Column(
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
                    height: 2,
                  ),
                ),
              ),
              SizedBox(height: 4),
              IntlPhoneField(
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  // print(phone.completeNumber);
                },
                decoration: InputDecoration(
                  // labelText: 'Phone Number',
                  counterText: '',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // default border color
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // bottom line color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // bottom line color on focus
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