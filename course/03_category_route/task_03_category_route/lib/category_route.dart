// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:task_03_category_route/category.dart';

const _listPadding = EdgeInsets.symmetric(horizontal: 8.0);
const _title = "Unit Converter";
const _titleStyle = TextStyle(fontSize: 30.0);

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    final listView = Padding(
      padding: _listPadding,
      child: ListView.builder(
          itemBuilder: _buildCategoryItem, itemCount: _categoryNames.length),
    );

    final appBar = AppBar(
      backgroundColor: Colors.green,
      elevation: 0.0,
      title: Text(
        _title,
        style: _titleStyle,
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }

  Widget _buildCategoryItem(BuildContext context, int index) {
    return Category(
        name: _categoryNames[index],
        color: _baseColors[index],
        iconLocation: Icons.access_alarm);
  }
}
