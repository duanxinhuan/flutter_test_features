import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rich text demo'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children:
            [
              RichText(
              text: TextSpan(
                text: 'this is our rich text!',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "studio",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      ),
                    )
                  ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset('assets/images/fruit.jpeg', width: 200, height: 200,)
                ),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
