import 'package:scopedmodel/scoped_models/base_model.dart';

class SuccessModel extends BaseModel {
  String title = 'no text yet';

  Future fetchDuplicateText(String text) async {
    print('entering SuccessModel.fetchDuplicateText(\'$text\')');
    setState(ViewState.Busy);
    await Future.delayed(Duration(seconds: 5));
    title = '$text $text';
    setState(ViewState.Retrieved);
    print('ended SuccessModel.fetchDuplicateText()');
  }
}
