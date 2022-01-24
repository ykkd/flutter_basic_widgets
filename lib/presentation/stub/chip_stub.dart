import 'package:flutter/material.dart';
import 'package:fooderlich/presentation/Theme/fooderlich_theme.dart';

final List<Widget> chipStubs = <Widget>[
  Chip(
    label: Text('Healthy', style: FooderlichTheme.darkTextTheme.bodyText1),
    backgroundColor: Colors.black.withOpacity(0.7),
    onDeleted: () {
      print('delete');
    },
  ),
  Chip(
    label: Text('Vegen', style: FooderlichTheme.darkTextTheme.bodyText1),
    backgroundColor: Colors.black.withOpacity(0.7),
    onDeleted: () {
      print('delete');
    },
  ),
  Chip(
    label: Text('Carrots', style: FooderlichTheme.darkTextTheme.bodyText1),
    backgroundColor: Colors.black.withOpacity(0.7),
    onDeleted: () {
      print('delete');
    },
  ),
];
