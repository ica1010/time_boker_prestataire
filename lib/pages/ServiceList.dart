import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../widgets/Header.dart';
import 'ServiceDetail.dart';

class ServiceList extends StatefulWidget {
  final List<Map<String, dynamic>> servicelist;
  const ServiceList({Key? key, required this.servicelist}) : super(key: key);
  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 18, left: 18 ),
        child: Column(
          children: [
            Header(back: true, search: false,),
            Expanded(
              child: GridView.count(
                childAspectRatio: 4 / 7,
                crossAxisCount: 2,
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
                children: List.generate((widget.servicelist).length, (index) {
                  final item = (widget.servicelist)[index];
                  bool _isFavorite = item['favorite'];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ServiceDetail(
                                  offre: item['offre'],
                                  service: (widget.servicelist)[index],
                                )),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              height: 140,
                              child: Image.asset(
                                item['Fimage'] ?? 'img/image 3.png',
                                 fit: BoxFit.cover,
                              ),
                            ),
                          ), // Remplacez 'default_image.png' par le chemin de votre image par défaut
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      item['Name'] ?? 'Nom du Service',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ),
                                      maxLines: 1,
                                    ),
                                  AutoSizeText(
                                      item['City'] ?? 'Description du Service',
                                      style: TextStyle(fontSize: 12),
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  _isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_outline,
                                  color: Colors.blue,
                                ),
                                onPressed: () {
                                  setState(() {
                                    item['favorite'] = !_isFavorite;
                                    print(_isFavorite);
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
