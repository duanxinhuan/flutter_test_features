import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar{
  final String title;
  MyAppBar(this.title);

  Widget buildBasicBar() {
    return AppBar(
      title: Text(this.title),
    );
  }
}
