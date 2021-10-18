import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_key/services/randomContactGenerator.dart';

class ContactTile extends StatefulWidget {
  @override
  _ContactTileState createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> with AutomaticKeepAliveClientMixin{
  Contact contact = RandomContactGenerator.instance.generateRandomContact();

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: changePerson,
      child: Container(
        width: double.infinity,
        height: 180,
        padding: EdgeInsets.all(14),
        child: Stack(children: [
          Positioned(
            top: 10,
            left: 10,
            child: Text('name:${this.contact.name}')
          ),

          Positioned(
              top: 20,
              left: 10,
              child: Text('title:${this.contact.title}')
          ),
          Positioned(
              top: 30,
              left: 10,
              child: Text('street address:${this.contact.streetAddress}')
          ),
          Positioned(
              top: 40,
              left: 10,
              child: Text('email:${this.contact.email}'),
          ),

        ]
          ),

        decoration: BoxDecoration(
          border:  Border.all(color: Colors.blueAccent)
        ),
      ),
    );
  }

  void changePerson(){
    setState(() {
      this.contact.changeEmail();
    });
  }



  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}
