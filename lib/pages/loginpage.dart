import 'package:flutter/material.dart';
import 'package:groceriesapp/pages/signuppage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white70),

          Positioned(
            width: 450,
            child: Image.asset(
              "assets/images/Rectangle.png",
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 110,
            left: 200,
            right: 200,
            child: Image.asset("assets/images/carrot.png", fit: BoxFit.cover),
          ),

          Positioned(
            top: 230,
            left: 30,
            child: Container(
              child: Text(
                "Loging",
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          Positioned(
            top: 275,
            left: 30,
            child: Container(
              child: Text(
                "Enter your email and password",
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 340),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    counterText: '',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.5),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 440),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    // labelText: 'Password',
                    // this button is used to toggle the password visibility
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 530,
            right: 30,
            child: Container(
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black54,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 340,
              ), //this help to move button upward direction
              child: SizedBox(
                height: 65,
                width: 370,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signuppage()),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF53B175),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        height: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 600,
            right: 90,
            child: Row(
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                    color: Color(0xFF53B175),
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
