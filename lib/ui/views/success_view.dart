// Flutter
import 'package:flutter/material.dart';
import 'package:scopedmodel/enums/view_states.dart';
import 'package:scopedmodel/ui/widgets/busy_overlay.dart';
// External Libraries

// My code
import 'base_view.dart';

import 'package:scopedmodel/scoped_models/success_model.dart';

class SuccessView extends StatelessWidget {
  final String title;

  SuccessView({this.title});

  @override
  Widget build(BuildContext context) {
    return BaseView<SuccessModel>(
      onModelReady: (model) => model.fetchDuplicateText(title),
      builder: (context, child, model) => BusyOverlay(
        show: model.state == ViewState.Busy,
        child: Scaffold(
          // floatingActionButton: FloatingActionButton(onPressed: () {
          //   model.saveData();
          // }),
          body: Center(
            // child: Text(this.runtimeType.toString()),
            child: Text(model.title),
          ),
        ),
      ),
    );
  }
}
