import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/base_view.dart';
import 'package:built_collection/built_collection.dart';
import 'package:shop_app/category_list/category_list_viewmodel.dart';
import 'package:shop_app/models/categories.dart';
import 'package:shop_app/models/category.dart';
import 'package:shop_app/utils/view_state.dart';
import 'package:shop_app/widgets/loading_widget.dart';

class CategoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<CategoryListViewModel>(
      onModelReady: (viewmodel) => viewmodel.getCategoryList(),
      builder: (context, viewmodel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Categories'),
            centerTitle: true,
          ),
          body: _renderView(viewmodel.state, viewmodel.categoryList),
        );
      },
    );
  }

  Widget _renderView(ViewState viewstate, Response<Categories> categories) {
    switch (viewstate) {
      case ViewState.Done:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: getCategoryUI(categories.body.category)),
          ],
        );

      case ViewState.Busy:
        return LoadingWidget();
      default:
        return Center(child: Text('No Results'));
    }
  }

  Widget getCategoryUI(BuiltList<Category> categoryList) => ListView.separated(
        itemCount: categoryList.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (context, index) {
          final category = categoryList[index];
          return ListTile(
            title: Text(category.category),
            leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage:
                    NetworkImage("http://139.59.101.3:3050/" + category.image)),
          );
        },
      );
}
