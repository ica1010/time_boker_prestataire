import 'package:flutter/material.dart';

import 'change_profile.dart';

class VServiceManagerPage extends StatefulWidget {
  const VServiceManagerPage({Key? key}) : super(key: key);

  @override
  _VServiceManagerPageState createState() => _VServiceManagerPageState();
}

class _VServiceManagerPageState extends State<VServiceManagerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangeProfile()),
                  );
                },
                child: Icon(
                  Icons.person_pin,
                  size: 45,
                ),
              )
            ],
            title: Column(
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
            bottom: TabBar(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              isScrollable: true,
              tabAlignment: TabAlignment.center,
              tabs: [

                Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      'Réservé',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      'Réserver',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      'Confirmé',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: TabBarView(
              children: [
                ServiceStatus(),
                ServiceStatus(),
                ServiceStatus(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ServiceStatus extends StatelessWidget {
  const ServiceStatus({super.key});
  void showProgram(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Center(child: Text("Nom du service")),
          backgroundColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          hintText: 'Lundi 11 decembre 2023',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('icon/calendar_2693507 1.png')),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        hintText: '10:15',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(18)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Reservé',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void showOption(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Center(child: Text("0 2")),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 219, 170),
                        borderRadius: BorderRadius.circular(18)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Accepter',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 219, 170),
                        borderRadius: BorderRadius.circular(18)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Décalé',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 219, 170),
                        borderRadius: BorderRadius.circular(18)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Refuser',
                        style: TextStyle(color: Colors.black),
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
                        showProgram(context);
                      },
                      child: Text(
                        'Réservé',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
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
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: 50,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'John Doe',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'coupe simple',
                    ),
                    Text(
                      'Mar 02 janvier 2024 14:30',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  showOption(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Text(
                    'Options',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
