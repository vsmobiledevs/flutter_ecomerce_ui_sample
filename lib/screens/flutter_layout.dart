import 'package:flutter/material.dart';

class FlutterLayout extends StatelessWidget {
  const FlutterLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Widget getBody () {
      //Rows and Coloums
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Image.network('https://picsum.photos/id/1/200/300'),
            Image.network('https://picsum.photos/id/1/200/300'),
            Image.network('https://picsum.photos/id/1/200/300'),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: getBody(),
      ),
    );
  }
}
