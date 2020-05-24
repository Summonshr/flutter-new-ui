import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final String image;

  final String title;

  final String time;

  const News({
    @required this.time,
    @required this.image,
    @required this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/single');
      },
      child: Container(
          padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Row(children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                  image: AssetImage(image)),
            ),
            SizedBox(width: 15.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: Theme.of(context).textTheme.headline2),
                  Text(time),
                ],
              ),
            ),
          ])),
    );
  }
}
