import 'package:chopper/chopper.dart';
import 'package:shop_app/category_list/category_list_service.dart';
import 'package:shop_app/item_list/item_list_service.dart';
import 'package:shop_app/utils/built_value_converter.dart';

class ShopApiClient {
  static ChopperClient _client;

  ShopApiClient._();

  static ChopperClient getClient() {
    _client ??= ChopperClient(
        baseUrl: 'http://139.59.101.3:3050',
        converter: BuiltValueConverter(),
        services: [
          CategoryListService.getServiceOnly(),
          ItemListService.getServiceOnly()
        ],
        interceptors: [
          HttpLoggingInterceptor(),
        ]);

    return _client;
  }
}
