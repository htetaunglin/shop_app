import 'package:chopper/chopper.dart';
import 'package:shop_app/base_model.dart';
import 'package:shop_app/category_list/category_list_repository.dart';
import 'package:shop_app/di/locator.dart';
import 'package:shop_app/models/categories.dart';
import 'package:shop_app/utils/view_state.dart';

class CategoryListViewModel extends BaseModel {
  CategoryListRepository repo = locator<CategoryListRepository>();

  Response<Categories> categoryList;

  Future getCategoryList() async {
    notifyState(ViewState.Busy);

    await repo
        .getAllCategory()
        .catchError((_) => notifyState(ViewState.Failed))
        .then((value) => _stateDone(value));
  }

  void _stateDone(value) {
    categoryList = value;
    notifyState(ViewState.Done);
  }
}
