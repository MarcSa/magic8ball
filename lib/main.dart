import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue.shade500,
          appBar: AppBar(
            backgroundColor: Colors.lightBlue.shade900,
          ),
          body: ImageRenderer(),
        ),
      ),
    );

class ImageRenderer extends StatefulWidget {
  const ImageRenderer({super.key});

  @override
  State<ImageRenderer> createState() => _ImageRendererState();
}

class _ImageRendererState extends State<ImageRenderer> {
  @override
  int randomIntImage = 5;
  void randomIntImageGenerator() {
    randomIntImage = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('ball$randomIntImage.png'),
    );
  }
}
