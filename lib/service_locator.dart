import 'package:get_it/get_it.dart';
import 'package:scopedmodel/scoped_models/home_model.dart';
import 'package:scopedmodel/scoped_models/success_model.dart';
import 'package:scopedmodel/scoped_models/error_model.dart';
import 'package:scopedmodel/services/storage_service.dart';

GetIt locator = GetIt();

void setupLocator() {
  // Register services
  locator.registerLazySingleton<StorageService>(() => StorageService());
  // Register models
  locator.registerFactory<HomeModel>(() => HomeModel());
  locator.registerFactory<SuccessModel>(() => SuccessModel());
  locator.registerFactory<ErrorModel>(() => ErrorModel());
}
