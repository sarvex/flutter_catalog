import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart' show kTransparentImage;

class ImageExample extends StatelessWidget {
  const ImageExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Image from asset:'),
        ),
        Card(
          child: Image.asset('res/images/material_design_2.jpg'),
        ),
        Divider(),
        ListTile(
          title: Text('Image from url:'),
        ),
        Card(
          // FadeInImage is better than Image.network because it can show a
          // placeholder when image is loading. C.f.
          // https://flutter.io/docs/cookbook/images/fading-in-images
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: 'https://images.freeimages.com/images/large-previews/4ad/coloured-pencils-1427682.jpg',
          ),
        ),
        Divider(),
        ListTile(
          title: Text('GIF from asset:'),
        ),
        Image.asset(
          'res/images/animated_flutter_lgtm.gif',
          scale: 1.0,
        ),
        Divider(),
        ListTile(
          title: Text('WEBP from package in assets:'),
        ),
        // In pubspec.yaml, remember to add asset:
        // 'packages/flutter_gallery_assets/animated_images/animated_flutter_stickers.webp'
        Image.asset(
          'animated_images/animated_flutter_stickers.webp',
          package: 'flutter_gallery_assets',
        ),
      ],
    );
  }
}
