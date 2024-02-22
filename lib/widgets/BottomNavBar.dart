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
    VServiceManagerPage(),
    Setting(),
  ];

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
