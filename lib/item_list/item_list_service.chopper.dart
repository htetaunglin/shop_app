// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_list_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ItemListService extends ItemListService {
  _$ItemListService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ItemListService;

  Future<Response<Items>> getItems(int cityid, String categoryid) {
    final $url = 'http://139.59.101.3:3050/services/availableproducts';
    final Map<String, dynamic> $params = {
      'cityid': cityid,
      'categoryid': categoryid
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Items, Items>($request);
  }
}
