
import 'package:chopper/chopper.dart';
import 'package:shop_app/api/shop_api_client.dart';
import 'package:shop_app/models/categories.dart';

part 'category_list_service.chopper.dart';

@ChopperApi(baseUrl: 'http://139.59.101.3:3050/api')
abstract class CategoryListService extends ChopperService{
  static CategoryListService create(){
    return _$CategoryListService(ShopApiClient.getClient());
  }

  static CategoryListService getServiceOnly(){
    return _$CategoryListService();
  }

  @Get(path: '/category')
  Future<Response<Categories>> getAllCategory();
}