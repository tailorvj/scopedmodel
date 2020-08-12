// Flutter
import 'package:flutter/material.dart';
// External Libraries

// My code
import 'package:scopedmodel/enums/view_states.dart';
import 'base_view.dart';

import 'package:scopedmodel/scoped_models/error_model.dart';

class ErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ErrorModel>(
      builder: (context, child, model) => Scaffold(
        // floatingActionButton: FloatingActionButton(onPressed: () {
        //   model.saveData();
        // }),
        body: Center(
          child: Text(this.runtimeType.toString()),
        ),
      ),
    );
  }
}

Widget _getBodyUI(ViewState state) {
  // Use
  // _getBodyUI(model.state),
  // in your scaffold body code to retrieve this value
  switch (state) {
    case ViewState.Busy:
      return CircularProgressIndicator();
    case ViewState.Retrieved:
    default:
      return Text('Done');
  }
}
