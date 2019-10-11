import 'package:flutter/material.dart';

class LogotipoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('images/logotipo.png');
    var image = new Image(image: assetsImage, width: 800.0, height: 300.0);
    return new Container(child: image);
  }
}