import 'package:flutter/material.dart';
import 'package:realozo/models/places2.dart';
import 'image_card.dart';

class Images2Cards2 extends StatefulWidget {
  @override
  _Images2Cards2State createState() => _Images2Cards2State();
}

class _Images2Cards2State extends State<Images2Cards2> {
  List<Place2> places = [
    Place2(
        place2: 'Jodhpur \n Umaid Bhawan',
        picture2: 'images/Umaidbhavan.jpg',
        name2: 'India Gate'),
    Place2(
        place2: 'Jodhpur \n Umaid Bhawan',
        picture2: 'images/Umaidbhavan.jpg',
        name2: 'Umaid Palace'),
    Place2(
        place2: 'Jodhpur \n Umaid Bhawan',
        picture2: 'images/Umaidbhavan.jpg',
        name2: 'Disney Land Hotel'),
    Place2(
        place2: 'Jodhpur \n Umaid Bhawan',
        picture2: 'images/Umaidbhavan.jpg',
        name2: 'Hawa Mahal'),
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
            name: places[index].name2,
            picture: places[index].picture2,
            place: places[index].place2,
          );
        },
      ),
    );
  }
}
