///需要使用hide隐藏Page
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart'hide Page;
import 'package:flutter/material.dart' hide Page;
import 'count/page.dart';

void main() {
  runApp(createApp());
}

Widget createApp() {
  ///定义路由
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      "CountPage": CountPage(),
    },
  );

  return MaterialApp(
    title: 'FishDemo',
    home: routes.buildPage("CountPage", null), //作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute(
        builder: (BuildContext context) {
          return routes.buildPage(settings.name, settings.arguments);
        },
        settings: settings,
      );
    },
  );
}