import 'package:flutter/material.dart';
import 'package:groceriesapp/pages/accountPage.dart';
import 'package:groceriesapp/pages/cartPage.dart';
import 'package:groceriesapp/pages/favouritePage.dart';

import 'explorePage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int myIndex = 0;
  List<Widget> widgetList = const[
    explorePage(),
    cartPage(),
    favouritePage(),
    accountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 80,
      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 30, left: 105),
      //     child: Image.asset("assets/images/carrot.png", height: 45),
      //   ),
      // ),
      body: IndexedStack(
        index: myIndex,
        children: [
          // Tab 0 → Shop/Home
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Welcome to the Shop!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text("This is the home screen content for the Shop tab."),
              ],
            )
          ),


          explorePage(),
          cartPage(),
          favouritePage(),
          accountPage(),

        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        iconSize: 38,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF53B175),
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        onTap: (index){
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
