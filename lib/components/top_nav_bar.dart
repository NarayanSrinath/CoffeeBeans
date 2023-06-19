import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  final IconData iconOne;
  final IconData? iconTwo;
  final Color navBgcolorOne;
  final Color? navBgcolorTwo;
  final void Function() ontapOne;
  final void Function() ontapTwo;
  const TopNavigationBar({
    super.key,
    required this.ontapOne,
    required this.ontapTwo,
    required this.iconOne,
    this.iconTwo,
    required this.navBgcolorOne,
    this.navBgcolorTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: this.navBgcolorOne),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: InkWell(
                onTap: () {
                  ontapOne();
                  //  Add parentheses ^^
                },
                child: Icon(
                  this.iconOne,
                  size: 20,
                ),
              ),
            )),
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: this.navBgcolorTwo),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: InkWell(
                onTap: () {
                  ontapTwo();

                  //  Add parentheses ^^
                },
                child: Icon(
                 this.iconTwo,
                  size: 20,
                ),
              ),
            ))
      ],
    );
  }
}
