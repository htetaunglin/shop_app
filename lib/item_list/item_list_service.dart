import 'package:chopper/chopper.dart';
import 'package:shop_app/api/shop_api_client.dart';
import 'package:shop_app/models/items.dart';

part 'item_list_service.chopper.dart';

@ChopperApi(baseUrl: 'http://139.59.101.3:3050/services')
abstract class ItemListService extends ChopperService {
  static ItemListService create() {
    return _$ItemListService(ShopApiClient.getClient());
  }

  static ItemListService getServiceOnly() {
    return _$ItemListService();
  }

  @Get(path: '/availableproducts')
  Future<Response<Items>> getItems(
      @Query('cityid') int cityid, @Query('categoryid') String categoryid);
}
