import 'package:flutter/material.dart';

class Author extends StatelessWidget {
  const Author({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.grey.shade900, size: 25.0),
        elevation: 0.0, // Removes background
      ),
      backgroundColor: Color(0xFFbdae9b),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 60,
                width: double.infinity,
              ),
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFe9e5dd),
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Color(0xFFe9e5dd),
                        height: 0,
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Positioned(
                              top: -50.0,
                              left: MediaQuery.of(context).size.width / 2.7,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image(
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('./images/image-4.jpg'))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Expanded(
                child: Container(
                  color: Color(0xFFe9e5dd),
                  child: Column(
                    children: <Widget>[
                      Text('Maja Lunde',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                            "Maja Lunde tells us what it takes to make your own money. He’s a prolific author, podcaster, educator, open source creator, and true fullstack developer. He shares a look into what it took to make Refactoring UI and Tailwind CSS smash hits.",
                            style: TextStyle(
                                height: 1.4,
                                fontSize: 14.0,
                                color: Colors.brown.shade900)),
                      ),
                      Expanded(
                        child: Container(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("Books",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade700)),
                                      Spacer(),
                                      Text('All',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade700))
                                    ],
                                  ),
                                  Divider(
                                      thickness: 2.0,
                                      color: Colors.grey.shade700),
                                  Book(
                                      image: './images/book-1.jpg',
                                      title: 'The End of Ocean',
                                      subtitle: 'by Maja Junde',
                                      checked: true),
                                  Book(
                                      image: './images/book-2.jpg',
                                      title: 'The End of Ocean',
                                      subtitle: 'by Maja Junde',
                                      checked: false),
                                  Book(
                                      image: './images/book-3.png',
                                      title: 'Making Things Happen',
                                      subtitle: 'by Maja Junde',
                                      checked: false),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Book extends StatelessWidget {
  final String image;

  final String title;

  final String subtitle;

  final bool checked;

  const Book({Key key, this.image, this.title, this.subtitle, this.checked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image(width: 100, image: AssetImage(image)),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text(subtitle,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(checked ? Icons.done : Icons.add,
                      color: checked ? Colors.green : Colors.grey.shade800),
                ],
              )
            ],
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
      ],
    );
  }
}
