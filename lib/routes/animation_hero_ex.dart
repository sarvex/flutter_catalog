import 'package:flutter/material.dart';

class HeroExample extends StatelessWidget {
  const HeroExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: 'my-hero-animation-tag',
                child: CircleAvatar(
                  backgroundImage: AssetImage('res/images/material_design_3.png'),
                ),
              ),
              onTap: () => _showSecondPage(context),
            ),
            title: Text('Tap on the photo to view the animation transition.'),
          ),
        ],
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Hero(
              tag: 'my-hero-animation-tag',
              child: Image.asset('res/images/material_design_3.png'),
            ),
          ),
        ),
      ),
    );
  }
}
