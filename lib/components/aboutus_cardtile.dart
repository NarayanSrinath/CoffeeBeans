
import 'package:flutter/material.dart';

class AboutUsTile extends StatefulWidget {
  final String headingText;
  final String contentText;
  const AboutUsTile({super.key, required this.headingText, required this.contentText});

  @override
  State<AboutUsTile> createState() => _AboutUsTileState();
}

class _AboutUsTileState extends State<AboutUsTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 450,
      child: Card(
        elevation: 10,
        color: Colors.grey.shade400,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child:  Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                widget.headingText,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.brown),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
              widget.contentText,
                style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.brown),
                    textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
