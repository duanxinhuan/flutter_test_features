import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_key/screens/basicWidgetDemos/stackDemo.dart';
import 'package:flutter_test_key/services/dialogueService.dart';
import 'package:flutter_test_key/services/navigatorService.dart';
import 'package:flutter_test_key/services/randomContactGenerator.dart';
import 'package:flutter_test_key/widgets/contantTile.dart';

void main() {
  print(faker.image.image());
  NavigationService.instance.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.instance.navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'myapp',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  /*
  solution1: create a list of contact and pass the contacts to the list view, so even is the list view is rebuilt, the data
  will be persisted.

  solution2: prevent the contact tile widget from rebuild using with AutomaticKeepAliveClientMixin
  and set wantKeepAlive=true

  */


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // first solution:
  // List<Contact> contacts = [];
  //
  // @override
  // void initState() {
  //   for (int i=0; i<50; i++){
  //     contacts.add(RandomContactGenerator.instance.generateRandomContact());
  //   }
  //
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
      // itemCount: contacts.length,
      itemCount: 50,
      controller: ScrollController(),
      itemBuilder: (BuildContext context, int index){


        // return ContactTile(contact: contacts[index] );
        return ContactTile();
      }
      ),
    );
  }
}
