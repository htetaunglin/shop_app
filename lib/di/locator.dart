import 'package:get_it/get_it.dart';
import 'package:shop_app/category_list/category_list_repository.dart';
import 'package:shop_app/category_list/category_list_service.dart';
import 'package:shop_app/category_list/category_list_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {

  locator.registerLazySingleton(() => CategoryListService.create());

  locator.registerFactory(() => CategoryListViewModel());
  locator.registerFactory(() => CategoryListRepository());
}