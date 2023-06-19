import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MybottomNavBar extends StatelessWidget {
   final void Function(int) onTabChange;
  const MybottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(20),
      child: GNav(
        tabMargin:const EdgeInsets.all(5),
          onTabChange: (value) => onTabChange(value),
          color: Colors.grey[400],
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.grey[700],
          tabBorderRadius: 24,
          tabBackgroundColor: Colors.grey.shade300,
          tabActiveBorder: Border.all(color: Colors.black),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
              textColor: Colors.black,
            ),
          
            GButton(
              icon: Icons.history_edu,
              text: " About Us",
              textColor: Colors.black,
            ),
             GButton(
              icon: Icons.contact_page,
              text: " Contact Us",
              textColor: Colors.black,
            ),
          ]),
    );
  }
}
