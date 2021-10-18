import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../reusableWidgets.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('align demo').buildBasicBar(),
      body: Center(
        widthFactor: 4,
        heightFactor: 4,
        child: Container(

          width: double.infinity,
          height: 400,
          color: Colors.grey,

          child: Stack(
            //fit: expand(expand all the not positioned widget)
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),

              Positioned(
                bottom: -50,
                right: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),

            ],
          ),
        ),
      ),


    );
  }
}
