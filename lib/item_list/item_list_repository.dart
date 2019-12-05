import 'package:shop_app/di/locator.dart';
import 'package:shop_app/item_list/item_list_service.dart';

class ItemListRepository {
  ItemListService service = locator<ItemListService>();

  Future getItemByCategory(int cityId, String categoryId) =>
      service.getItems(cityId, categoryId);
}
