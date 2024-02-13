import 'package:flutter/material.dart';
import 'package:time_boker_prestataire/generated/assets.dart';
import 'package:time_boker_prestataire/widgets/Header.dart';

import '../models/category.models.dart';
import '../widgets/carousel.dart';
import 'ServiceList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePage> {


  String get imgBarber1 => Assets.imgBarber1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(back: false ,search: true,),
              Container(
                height: 150,
                margin: EdgeInsets.only(top: 18),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Category.length,
                  itemBuilder: (context, index) {
                    final item = Category[index];
                    return InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: Image.asset(item['image']),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ServiceList(
                                                servicelist: item[
                                                    'service'], // Passer le nom du servic
                                              )),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: InkWell(
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ServiceList(
                                              servicelist: item['service'],
                                            )),
                                  );
                                },
                                child: Text(
                                  item['title'] ?? 'untitle',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Carousel()
            ],
          ),
        ),
      ),
    );
  }
}
