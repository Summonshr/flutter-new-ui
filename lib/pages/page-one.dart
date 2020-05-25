import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../components/news.dart';
import '../components/scaffold.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CustomScaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                  width: size.width,
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Column(
                    children: <Widget>[
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
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Text(
                              'The Perfect Pair of Pants is \nJust a 3D Body Scan Away',
                              style: Theme.of(context).textTheme.headline1),
                        ],
                      ),
                      SizedBox(height: 10),
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
                                  border:
                                      Border.all(color: Colors.grey.shade700),
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
                      SizedBox(height: 40),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                          text: ' Read more ...',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () => Navigator.pushNamed(
                                                context, '/single'),
                                          style:
                                              TextStyle(color: Colors.yellow))
                                    ],
                                    text:
                                        'The result, Litchfield hopes, will go beyond simply outfitting a more diverse set of body types. ',
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                                softWrap: true,
                              ),
                            ),
                          ),
                          Icon(Icons.headset_mic, color: Colors.grey.shade400),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  )),
              Expanded(
                  child: Container(
                      width: size.width,
                      padding: EdgeInsets.only(left: 15.0),
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: 5.0,
                          ),
                          News(
                              image: './images/image-5.jpg',
                              title:
                                  'Will Identity Policitcs Force the stubbord Mind',
                              time: '18 Feb 2019 - 6:00 PM'),
                          News(
                              image: './images/image-6.jpg',
                              title:
                                  'Why Microsoft things hololens2 is above the',
                              time: '18 Feb 2019 - 6:00 PM'),
                          News(
                              image: './images/image-7.jpg',
                              title: 'Microsoft problem with hololens',
                              time: '18 Feb 2019 - 6:00 PM'),
                          News(
                              image: './images/image-1.jpg',
                              title: 'Microsoft problem with hololens',
                              time: '18 Feb 2019 - 6:00 PM'),
                          News(
                              image: './images/image-3.jpg',
                              title: 'Microsoft problem with hololens',
                              time: '18 Feb 2019 - 6:00 PM'),
                        ]),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
