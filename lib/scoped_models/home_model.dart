import '../service_locator.dart';
import '../services/storage_service.dart';
import '../enums/view_states.dart';
import 'base_model.dart';

class HomeModel extends BaseModel {
  StorageService storageService = locator<StorageService>();

  String title = 'HomeModel title';
  String subtitle = 'HomeModel subtitle';

  Future<bool> saveData() async {
    setState(ViewState.Busy);
    title = 'Saving Data';
    await storageService.saveData();
    title = 'Data Saved';
    setState(ViewState.Retrieved);
    return true;
  }
}
