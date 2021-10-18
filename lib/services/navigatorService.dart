import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test_key/screens/basicWidgetDemos/richTextDemo.dart';

class NavigationService {
  static NavigationService instance = NavigationService();
  final GlobalKey<NavigatorState> navigatorKey =
  new GlobalKey<NavigatorState>();
  final router = FluroRouter();

  static Handler richHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => RichTextDemo());
  void setupRouter() {
    router.define(
      'rich',
      handler: richHandler,
    );
  }

  Future<dynamic> navigateTo(String routeName) {
    router.navigateTo(navigatorKey.currentContext, routeName, transition: TransitionType.fadeIn);
  }
}