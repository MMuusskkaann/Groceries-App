import 'package:flutter/material.dart';
import 'package:groceriesapp/pages/homescreen.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
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
                "Sign Up",
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
            top: 290,
            left: 30,
            child: Container(
              child: Text(
                "Enter your credentials to continue",
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
            padding: const EdgeInsets.only(left: 30, right: 30, top: 360),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username",
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
                  keyboardType: TextInputType.text,
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
            padding: const EdgeInsets.only(left: 30, right: 30, top: 460),
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
            padding: const EdgeInsets.only(left: 30, right: 30, top: 580),
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
            top: 672,
            left: 30,
            child: Container(
              child: Text(
                "By continuing you agree to our Terms of Service",
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          Positioned(
            top: 697,
            left: 30,
            child: Container(
              child: Text(
                "and Privacy Policy.",
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 100, //110
              ), //this help to move button upward direction
              child: SizedBox(
                height: 65,
                width: 370,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homescreen()),
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
                      "Sign Up",
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
            top: 830,
            left: 87,
            child: Container(
              child: Text(
                "Already have an account ? Signup",
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black87,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
