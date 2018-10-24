// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class SomeStatefullWidget extends StatefulWidget {
  @override
  _SomeStatefullWidgetState createState() => _SomeStatefullWidgetState();
}

class _SomeStatefullWidgetState extends State<SomeStatefullWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: _addGradientDecoration(),
//            color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Hello!',
            style: TextStyle(fontSize: 40.0, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  BoxDecoration _addGradientDecoration() => BoxDecoration(
//        borderRadius: BorderRadius.all(Radius.circular(7.0)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 0.0),
          // 10% of the width, so there are ten blinds.
          colors: [const Color(0xFF69F0AE), const Color(0xFF00C853)],
          // whitish to gray
          tileMode: TileMode.clamp, // repeats the gradient over the canvas
        ),
      );
}

//RaisedButton(
//onPressed: () => print("on pressed"),
//child: Text(
//"Button",
//),
//),

//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Container(
//decoration: _addGradientDecoration(),
//child: Padding(
//padding: const EdgeInsets.all(16.0),
//child: Text(
//"Button",
//style: TextStyle(color: Colors.white),
//),
//),
//),
//),
