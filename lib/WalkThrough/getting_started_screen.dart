import 'dart:async';

import 'package:animated_carousel/WalkThrough/slide.dart';
import 'package:flutter/material.dart';
import 'package:animated_carousel/WalkThrough/slide_dot.dart';
import 'package:animated_carousel/WalkThrough/slide_item.dart';

class GettingStartedScreen extends StatefulWidget {
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  int _currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 5) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(microseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        //color: _colorList[_currentPage],
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              left: 0.0,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: _onPageChanged,
                controller: _pageController,
                itemCount: slideList.length,
                reverse: false,
                itemBuilder: (ctx, i) => SlideItem(i),
              ),
            ),
            Positioned(
              bottom: 32.0,
              left: 0.0,
              right: 0.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < slideList.length; i++)
                            if (i == _currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      '   Create an Account   ',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    padding: const EdgeInsets.all(12),
                    color: Colors.white,
                    textColor: Colors.blueGrey,
                    onPressed: () {
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already Have an account?',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      FlatButton(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 15.0,
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
