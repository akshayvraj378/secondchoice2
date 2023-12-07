import 'dart:ui';

import 'package:flutter/material.dart';

class Blurlog extends StatefulWidget {
  const Blurlog({super.key});

  @override
  State<Blurlog> createState() => _BlurlogState();
}

class _BlurlogState extends State<Blurlog> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/profile.jpg'))),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BackdropFilter(
                filter: ImageFilter.compose(
                    inner: ImageFilter.blur(), outer: ImageFilter.dilate()),
                child: Card(
                  elevation: 5,
                  color: Colors.indigo.withOpacity(0.1),
                  child: TextField(style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                    hintText: 'enter email',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder()),
                  ),
                )),
          ),
        ), Positioned(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BackdropFilter(
                filter: ImageFilter.compose(
                    inner: ImageFilter.blur(), outer: ImageFilter.dilate()),
                child: Card(
                  elevation: 1,
                  color: Colors.black.withOpacity(0.2),
                  child: TextField(style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'enter email',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                )),
          ),
        ),
      ]),
    );
  }
}
