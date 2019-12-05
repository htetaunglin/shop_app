import 'package:flutter/material.dart';
import 'package:shop_app/base_view.dart';
import 'package:shop_app/item_list/item_list_viewmodel.dart';
import 'package:shop_app/models/item.dart';
import 'package:shop_app/utils/view_state.dart';
import 'package:shop_app/widgets/error_widget.dart';
import 'package:shop_app/widgets/loading_widget.dart';
import 'package:built_collection/built_collection.dart';

class ItemListView extends StatelessWidget {
  final int cityId;
  final String categoryId;
  final String categoryName;

  ItemListView(
      {this.cityId = 1,
      @required this.categoryId,
      this.categoryName = "No Category"});
  @override
  Widget build(BuildContext context) {
    return BaseView<ItemListViewModel>(
      onModelReady: (viewmodel) => viewmodel.getItems(cityId, categoryId),
      builder: (context, viewmodel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(categoryName),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            automaticallyImplyLeading: false,
          ),
          body: render(viewmodel.state, viewmodel),
          resizeToAvoidBottomPadding: false,
        );
      },
    );
  }

  Widget render(ViewState state, ItemListViewModel viewModel) {
    switch (state) {
      case ViewState.Busy:
        return LoadingWidget();
      case ViewState.Done:
        return showlist(viewModel.items.body.data);
      default:
        return ErrorOccurWidget(
          icon: Icons.error,
          errorMessage: "Something is wrong. Try again",
        );
    }
  }

  Widget showlist(BuiltList<Item> itemList) {
    if (itemList.length > 0)
      return CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            delegate: SliverChildBuilderDelegate(
                (context, index) => itemCard(itemList[index]),
                childCount: itemList.length),
          ),
        ],
      );
    else
      return ErrorOccurWidget(
        icon: Icons.shopping_cart,
        errorMessage: "No items found",
      );
  }

  Widget itemCard(Item item) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FadeInImage.assetNetwork(
              height: 180,
              alignment: Alignment.center,
              image: 'http://139.59.101.3:3050/${item.productimage}',
              placeholder: 'images/Straight@3x.png',
            ),
            Expanded(
              child: Text(
                item.name,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
