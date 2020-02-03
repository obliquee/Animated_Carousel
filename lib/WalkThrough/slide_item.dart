import 'package:flutter/material.dart';
import 'slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  // final double height;
  // final double width;

  SlideItem(this.index,);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: slideList[index].bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 150,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 100,
            backgroundImage: AssetImage(slideList[index].imageUrl),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              slideList[index].description,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}
