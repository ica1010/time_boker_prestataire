import 'package:flutter/material.dart';
import 'package:time_boker_prestataire/widgets/Header.dart';

class Pocket extends StatelessWidget {
  const Pocket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Color.fromRGBO(1000, 1000, 1000, 100),
     // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:30.0, right: 18, left: 18),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Header(back: true, search: false,),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 12),
              child: Text(
                'Porteffeuille',
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Solde',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '1 825 Franc CFA',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(18)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Rechargé',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ClipRRect(
                      child: Image.asset(
                        'img/tmoney.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ClipRRect(
                      child: Image.asset(
                        'img/flooz.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  child: Image.asset(
                    'img/pocket.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
