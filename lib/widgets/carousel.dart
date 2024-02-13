import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<String> images = [
    'img/image 3.png',
    'img/image 4.png',
    'img/image 5.png',
    'img/barber 1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        aspectRatio: 1 / 1.2,
      ),
      items: images.map((String imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Image.asset(
              width: MediaQuery.of(context).size.width,
              imagePath,
              fit: BoxFit.cover,
            );
          },
        );
      }).toList(),
    );
  }
}
