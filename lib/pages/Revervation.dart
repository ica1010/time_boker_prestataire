import 'package:flutter/material.dart';
import 'package:time_boker_prestataire/widgets/Header.dart';
import '../generated/assets.dart';
import 'ServiceDetail.dart';

class Revervation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RevervationState();
  }
}

class RevervationState extends State<Revervation> {
  @override

  String get imgBarber1 => Assets.imgBarber1;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18 ),
        child: Column(
          children: [
            Header(back: false, search: false,),
            Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: ListTile(
                        title: Text('John Doe', style: TextStyle(fontSize:17, fontWeight: FontWeight.w700)),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Coupe Simple'),
                            Text('Mar 02 janvier 2024,', style: TextStyle(fontSize:15, fontWeight: FontWeight.w600),),
                            Text('14:30'),
                        ],
                        ),
                      trailing: TextButton(onPressed: () {  },
                      child: Text('Option', style: TextStyle(color: Colors.white),),style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),

                        ),),
                      ),
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
