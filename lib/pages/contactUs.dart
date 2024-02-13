import 'package:flutter/material.dart';
import 'package:time_boker_prestataire/widgets/Header.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color.fromRGBO(1000, 1000, 1000, 100),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: Header(back: true, search: false),
        ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: Center(
                child: Text(
                  'Nous ecrire',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 1.5 / 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  width: .5,
// assign the color to the border color
                  color: Colors.black54,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 10,
              margin: EdgeInsets.all(18),
              height: 40,
              decoration: BoxDecoration(
                  color:Color.fromARGB(255, 255, 219, 170),
                  borderRadius: BorderRadius.circular(18)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Envoyé',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
