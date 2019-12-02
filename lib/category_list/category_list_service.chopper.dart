// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$CategoryListService extends CategoryListService {
  _$CategoryListService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = CategoryListService;

  Future<Response<Categories>> getAllCategory() {
    final $url = 'http://139.59.101.3:3050/api/category';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Categories, Categories>($request);
  }
}
