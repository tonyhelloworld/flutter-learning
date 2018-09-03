import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class WebImages extends StatelessWidget {
  final String title;

  WebImages({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: CircularProgressIndicator(),
            ),
            Center(
              child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      'http://pic2.52pk.com/files/160216/5329500_160443_1.png'),
            ),
            CachedNetworkImage(
              placeholder: CircularProgressIndicator(),
              imageUrl: 'http://pic2.52pk.com/files/160216/5329500_160443_1.png',
            ),
          ],
        ),
      ),
    );
  }
}
