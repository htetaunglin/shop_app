import 'package:chopper/chopper.dart';
import 'package:shop_app/base_model.dart';
import 'package:shop_app/di/locator.dart';
import 'package:shop_app/item_list/item_list_repository.dart';
import 'package:shop_app/models/items.dart';
import 'package:shop_app/utils/view_state.dart';

class ItemListViewModel extends BaseModel {
  ItemListRepository repo = locator<ItemListRepository>();

  Response<Items> items;

  Future getItems(int cityId, String categoryId) async {
    notifyState(ViewState.Busy);

    await repo
        .getItemByCategory(cityId, categoryId)
        .catchError((_) => notifyState(ViewState.Failed))
        .then((value) => _doneState(value));
  }

  void _doneState(value) {
    if (value != null) {
      items = value;
      notifyState(ViewState.Done);
    } else {
      notifyState(ViewState.Failed);
    }
  }
}
