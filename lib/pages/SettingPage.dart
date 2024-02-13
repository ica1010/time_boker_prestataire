import 'package:flutter/material.dart';
import 'package:time_boker_prestataire/pages/Pocket.dart';
import 'package:time_boker_prestataire/pages/change_profile.dart';
import 'package:time_boker_prestataire/pages/change_service.dart';
import 'package:time_boker_prestataire/pages/contactUs.dart';
import 'package:time_boker_prestataire/pages/promo.dart';
import 'package:time_boker_prestataire/pages/v_service_manager_page.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color.fromRGBO(1000, 1000, 1000, 100),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('img/logo.png'),
                      Text(
                        'book it',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VServiceManagerPage()),
                      );
                    },
                    icon: Icon(Icons.notifications))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: ListTile(
                title: Text('Porte-feuille '),
                leading: Icon(Icons.monetization_on_outlined),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pocket()),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: ListTile(
                title: Text('Promo'),
                leading: Icon(Icons.notifications_active_outlined),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Promo()),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: ListTile(
                title: Text('nous Ecrire'),
                leading: Icon(Icons.contact_support_outlined),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUs()),
                  );
                },
              ),
            ),
         
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: ListTile(
                title: Text('Change Profile'),
                leading: Icon(Icons.manage_accounts_outlined),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangeProfile()),
                  );
                },
              ),
            ),
         
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: ListTile(
                title: Text('Change service'),
                leading: Icon(Icons.manage_history_outlined),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangeService()),
                  );
                },
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
