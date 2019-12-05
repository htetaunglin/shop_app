import 'package:flutter/material.dart';
import 'package:shop_app/category_list/category_list_page.dart';
import 'package:shop_app/item_list/item_list_page.dart';
import 'package:shop_app/item_list/item_list_page_argument.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => CategoryListView());
      case '/item_list':
        final ArgumentsForItemListPage arg = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => ItemListView(
            cityId: arg.cityId,
            categoryId: arg.categoryId,
            categoryName: arg.categoryName,
          ),
        );
      default:
        return null;
    }
  }
}
