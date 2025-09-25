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
            top: 270,
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
            padding: const EdgeInsets.only(left: 30, right: 30, top: 330),
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
                SizedBox(height: 0),
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
            padding: const EdgeInsets.only(left: 30, right: 30, top: 430),
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
                SizedBox(height: 0),
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
            padding: const EdgeInsets.only(left: 30, right: 30, top: 530),
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
                SizedBox(height: 0),
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
            top: 620,
            left: 30,
            child: Row(
              children: [
                Text(
                  "By continuing you agree to our",
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(" Terms of Service", style: TextStyle(
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

          Positioned(
            top: 645,
            left: 30,
            child: Row(
              children: [
                Text(
                  "and ",
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),

                Text("Privacy Policy.",style: TextStyle(
                  color: Color(0xFF53B175),
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  decoration: TextDecoration.none,
                ),),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 230, //110
              ), //this help to move button upward direction
              child: SizedBox(
                height: 65,
                width: 390,
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
            top: 790,
            left: 105,
            child: Row(
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                  ),
                ),

                Text("Sign up",
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
