import 'package:flutter/material.dart';
import 'package:realozo/models/places3.dart';
import 'image_card.dart';

class Images3Cards3 extends StatefulWidget {
  @override
  _Images3Cards3State createState() => _Images3Cards3State();
}

class _Images3Cards3State extends State<Images3Cards3> {
  List<Place3> places = [
    Place3(
        place3: 'Jaipur \n Rambagh Palace',
        picture3: 'images/Rambagh.jpg',
        name3: 'India Gate'),
    Place3(
        place3: 'Jaipur \n Rambagh Palace',
        picture3: 'images/Rambagh.jpg',
        name3: 'Umaid Palace'),
    Place3(
        place3: 'Jaipur \n Rambagh Palace',
        picture3: 'images/Rambagh.jpg',
        name3: 'Disney Land Hotel'),
    Place3(
        place3: 'Jaipur \n Rambagh Palace',
        picture3: 'images/Rambagh.jpg',
        name3: 'Hawa Mahal'),
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
            name: places[index].name3,
            picture: places[index].picture3,
            place: places[index].place3,
          );
        },
      ),
    );
  }
}
