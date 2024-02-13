import 'package:flutter/material.dart';

class ServiceDetail extends StatefulWidget {
  final List<Map<String, dynamic>> offre;
  final service;
  const ServiceDetail({Key? key, required this.offre, required this.service})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ServiceDetailState();
  }
}

class ServiceDetailState extends State<ServiceDetail> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return SimpleDialog(
          backgroundColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          title: Center(child: const Text('Nom du service')),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
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
                    height:40,
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
                height: 40,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            (widget.service)['Bimage'],
                          )),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 3),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              (widget.service)['Fimage'],
                            )),
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        (widget.service)['Name'],
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 26),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        textAlign: TextAlign.center,
                        (widget.service)['Detail'] as String ?? '',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 18.0, right: 4, left: 4),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Image.asset('icon/Group 3.png'),
                          ),
                          Expanded(
                            child: Text((widget.service)['City'],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text((widget.service)['Jour'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                Text((widget.service)['Heure'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                          Image.asset('icon/calendar_2693507 1.png')
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                    right: 15,
                    top: 20,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_outlined,
                          color: Colors.white,
                        ))),
                Positioned(
                    left: 0,
                    top: 20,
                    child: BackButton(
                      color: Colors.white,
                    )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0) +
                      const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Services',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Coupe Simple',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      )),
                      Expanded(
                          child: Text(
                        '1000 FCFA',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(18)),
                        child: TextButton(
                          onPressed: () {
                            _showMyDialog();
                          },
                          child: Text(
                            'Reservé',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
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

// ListTile(
//                           leading: Text('Coupe simple'),
//                           title: Center(child: Text('1000 Fcfa')),
//                           trailing: Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.blue,
//                                 borderRadius: BorderRadius.circular(15)),
//                             child: TextButton(
//                               onPressed: () {},
//                               child: Text(
//                                 'reservé',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ),
