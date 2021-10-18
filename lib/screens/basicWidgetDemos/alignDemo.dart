import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_key/screens/reusableWidgets.dart';

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('align demo').buildBasicBar(),
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: 400,
        child: Align(

          child: Text(
              "hahaha",
              style:TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,

          ),
        ),
        ),
      ),

    );
  }
}
