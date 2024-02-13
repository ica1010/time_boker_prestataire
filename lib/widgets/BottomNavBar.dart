import 'package:flutter/material.dart';
import 'package:time_boker_prestataire/pages/HomePage.dart';
import 'package:time_boker_prestataire/pages/v_service_manager_page.dart';

import '../pages/LogupPage.dart';
import '../pages/SettingPage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page_index = 0;
  final List<Widget> pages = [
    HomePage(),
    VServiceManagerPage(),
    Setting(),
  ];
  void initState() {
    super.initState();
    // Appeler la fonction pour afficher l'alerte après un délai de 15 secondes
    Future.delayed(Duration(seconds: 10), () {
      showAlert(context);
    });
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Veillez vous connectez"),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text('Enter Your Phone number'),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        hintText: 'ex:+228 99 88 77 66',
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text('Enter Your Password'),
                        prefixIcon: Icon(Icons.key),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        hintText: 'enter your secret password',
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(18)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Se connecter',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text('Pas encore de compte? S\'inscrire'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only
        (top :30.0),
        child: Stack(
          children: [
            pages.elementAt(_page_index),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Align(
                alignment: Alignment(0.0, 1.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Theme(
                      child: BottomNavigationBar(
                        currentIndex: _page_index,
                        onTap: (int index) {
                          setState(() {
                            _page_index = index;
                            print('hello ${_page_index} ');
                          });
                        },
                        backgroundColor: Colors.blue,
                        showUnselectedLabels: false,
                        selectedItemColor: Colors.white,
                        unselectedItemColor: Colors.white70,
                        selectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 10.5),
                        items: [
                          BottomNavigationBarItem(
                              activeIcon: Icon(Icons.home),
                              icon: Icon(Icons.home_outlined),
                              label: 'Acceuille'),
                          BottomNavigationBarItem(
                              activeIcon: Icon(Icons.calendar_month),
                              icon: Icon(Icons.calendar_month_outlined),
                              label: 'Agenda'),
                          BottomNavigationBarItem(
                              activeIcon: Icon(Icons.settings),
                              icon: Icon(Icons.settings_outlined),
                              label: 'Parametre')
                        ],
                      ),
                      data: Theme.of(context).copyWith(
                          canvasColor: Colors.blue,
                          textTheme: Theme.of(context)
                              .textTheme
                              .copyWith(caption: TextStyle(color: Colors.white))),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
