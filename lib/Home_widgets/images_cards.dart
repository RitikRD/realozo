import 'package:flutter/material.dart';
import 'package:realozo/models/places.dart';
import 'image_card.dart';

class ImagesCards extends StatefulWidget {
  @override
  _ImagesCardsState createState() => _ImagesCardsState();
}

class _ImagesCardsState extends State<ImagesCards> {
  List<Place> places = [
    Place(
        place: 'Jaipur \n Hawa Mahal',
        picture: 'images/hawamahal.jpg',
        name: 'India Gate'),
    Place(
        place: 'Jaipur \n Hawa Mahal',
        picture: 'images/hawamahal.jpg',
        name: 'Umaid Palace'),
    Place(
        place: 'Jaipur \n Hawa Mahal',
        picture: 'images/hawamahal.jpg',
        name: 'Jaipur \n Hawa Mahal'),
    Place(place: 'Jaipur', picture: 'images/hawamahal.jpg', name: 'Hawa Mahal'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (_, index) {
          return ImageCard(
            name: places[index].name,
            picture: places[index].picture,
            place: places[index].place,
          );
        },
      ),
    );
  }
}
