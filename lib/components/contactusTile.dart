import 'package:flutter/material.dart';

class ContactUsTile extends StatefulWidget {
  final String imagepath;
  final String imageTile;
  const ContactUsTile({super.key, required this.imagepath, required this.imageTile});

  @override
  State<ContactUsTile> createState() => _ContactUsTileState();
}

class _ContactUsTileState extends State<ContactUsTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Card(
        elevation: 10,
        color: Colors.brown,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
              widget.imagepath,
                height: 90,
                width: 90,
              ),
            ),
             Text(widget.imageTile,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ))
          ],
        ),
      ),
    );
  }
}
