import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../components/article.dart';
import '../components/scaffold.dart';

class Single extends StatelessWidget {
  const Single({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.black.withOpacity(0.0),
            Colors.black54.withOpacity(0.9)
          ])),
          padding: EdgeInsets.only(left: 35.0, right: 20.0, bottom: 20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/author');
                },
                child: ListTile(
                  contentPadding: EdgeInsets.all(0.0),
                  leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade700),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('./images/image-1.jpg'),
                        ),
                      )),
                  title: Text('Sean Sherman',
                      style: Theme.of(context).textTheme.subtitle1),
                  subtitle: Text('Author',
                      style: Theme.of(context).textTheme.subtitle2),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                      'The Perfect Pair of Pants is \nJust a 3D Body Scan Away',
                      style: Theme.of(context).textTheme.headline3),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Text('28 Feb 2019 ',
                      style: Theme.of(context).textTheme.bodyText1),
                  Icon(Icons.sentiment_very_satisfied,
                      size: 5, color: Colors.white),
                  Text(' 9:00 AM,',
                      style: Theme.of(context).textTheme.bodyText1)
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(article, style: Theme.of(context).accentTextTheme.bodyText1)
            ],
          ),
        ),
      ),
    );
  }
}
