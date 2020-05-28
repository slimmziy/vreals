import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vreals/arpage.dart';

import 'gallery.dart';
import 'under_construction.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white10,
          elevation: 0,
          leading: InkWell(
            child: Image.asset(
              'assets/images/wp_back_button_icon.png',
              height: 250,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            InkWell(
              child: Image.asset(
                'assets/images/wp_gallery_button_icon.png',
                height: 250,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gallery()),
                );
              },
            )
          ],
        ),
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/wp_logo.png',
              height: 250,
            ),
            Container(
              height: 275,
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Construction()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/wp_vrthemedpark_button_icon.png',
                          height: 150,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ArPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/wp_arexperience_button_icon.png',
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 115,
                    left: 125,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gallery()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/wp_argallery_button_icon.png',
                        height: 150,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ))));
  }
}
