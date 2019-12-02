import 'package:flutter/material.dart';
import 'package:shop_app/category_list/category_list_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => CategoryListView());
      default:
        return null;
    }
  }
}
