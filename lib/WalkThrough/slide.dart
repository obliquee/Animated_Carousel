import 'package:flutter/material.dart';


class Slide {
  final String imageUrl;
  final String description;
  final Color bgColor;


  Slide({
    @required this.imageUrl,
    @required this.description,
    @required this.bgColor,
  });

}

final slideList = [
  Slide(
      imageUrl: 'images/walkThrough1.jpg',
      description: 'Some random text is this if you want to change then you can change it.',
      bgColor: Colors.redAccent,
  ),
  Slide(
    imageUrl: 'images/walkThrough2.jpg',
    description: 'Some random text is this if you want to change then you can change it.',
    bgColor: Colors.blueAccent,
  ),
  Slide(
    imageUrl: 'images/walkThrough3.jpg',
    description: 'Some random text is this if you want to change then you can change it.',
    bgColor: Colors.black,
  ),
  Slide(
    imageUrl: 'images/walkThrough4.jpg',
    description: 'Some random text is this if you want to change then you can change it.',
    bgColor: Colors.blueAccent,
  ),
  Slide(
      imageUrl: 'images/walkThrough5.jpg',
      description: 'Some random text is this if you want to change then you can change it.',
      bgColor: Colors.deepOrange,
  ),
  Slide(
      imageUrl: 'images/walkThrough6.jpg',
      description: 'Some random text is this if you want to change then you can change it.',
      bgColor: Colors.greenAccent,
  ),
];