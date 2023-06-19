import 'package:CoffeeBeans/Pages/developerContact_page.dart';
import 'package:CoffeeBeans/Pages/homepage.dart';
import 'package:CoffeeBeans/components/aboutus_cardtile.dart';
import 'package:CoffeeBeans/components/top_nav_bar.dart';
import 'package:CoffeeBeans/const/Colors.dart';
import 'package:CoffeeBeans/const/String.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    // Back to Home
    void backTohome() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }

    // BMove to contact page
    void moveToConatactPage() {
      showModalBottomSheet(
          isScrollControlled: true,
          elevation: 10,
          backgroundColor: bgcolor,
          context: context,
          builder: (context) {
            return Container(
                height: MediaQuery.of(context).size.height * 0.65,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
                child: DeveloperContactPage());
          });
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopNavigationBar(
                  ontapOne: () => backTohome(),
                  ontapTwo: () => moveToConatactPage(),
                  iconOne: Icons.home_filled,
                  iconTwo: Icons.phone,
                  navBgcolorTwo: Colors.grey.shade400,
                  navBgcolorOne: Colors.grey.shade400),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.asset('lib/images/coffeebeans.png')),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Cafe Coffee Day",
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            const  SizedBox(
                height: 30,
              ),
              AboutUsTile(
                contentText: abtusContent,
                headingText: abtusHeading,
              ),
            const  SizedBox(
                height: 20,
              ),
              AboutUsTile(
                contentText: companyContent,
                headingText: comapanyHeading,
              ),
            const  SizedBox(
                height: 20,
              ),
              AboutUsTile(
                contentText: missionContent,
                headingText: missionHeading,
              )
            ],
          ),
        ),
      ),
    );
  }
}
