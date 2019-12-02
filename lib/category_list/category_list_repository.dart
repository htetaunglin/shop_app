import 'package:shop_app/category_list/category_list_service.dart';
import 'package:shop_app/di/locator.dart';

class CategoryListRepository {
  CategoryListService service = locator<CategoryListService>();

  Future getAllCategory() => service.getAllCategory();
}
