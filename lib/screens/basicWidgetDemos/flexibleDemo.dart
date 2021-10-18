import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_key/screens/reusableWidgets.dart';

class FlexWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('flex widget demo').buildBasicBar(),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(color: Colors.green,),
          ),
          Flexible(
            flex: 2,
            child: Container(color: Colors.red,),
          ),
          Flexible(
            flex: 1,
            child: Container(color: Colors.blue,),
          )
        ],
      ),

    );
  }
}
