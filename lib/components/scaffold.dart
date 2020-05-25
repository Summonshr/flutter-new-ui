import 'package:flutter/material.dart';
import './drawer.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  const CustomScaffold({Key key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.multiply,
            color: Colors.red,
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.blueAccent.shade400, BlendMode.multiply),
                fit: BoxFit.cover,
                image: AssetImage('./images/image-1.jpg'))),
        child: Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              iconTheme: Theme.of(context).iconTheme,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: Icon(Icons.bookmark_border),
                )
              ],
            ),
            backgroundColor: Colors.transparent,
            body: body));
  }
}
