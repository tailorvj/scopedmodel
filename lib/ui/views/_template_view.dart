// Flutter
import 'package:flutter/material.dart';
// External Libraries

// My code
import 'package:scopedmodel/enums/view_states.dart';
import 'package:scopedmodel/ui/widgets/busy_overlay.dart';
import 'base_view.dart';

// TODO: Replace VIEW below with the specific view name for your model
// and uncommnet
// import 'package:scopedmodel/scoped_models/VIEW_model.dart';

// TODO: Rename the class
class VIEWView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Replace VIEWModel below ith your model
    return BaseView<VIEWModel>(
      builder: (context, child, model) => BusyOverlay(
        show: model.state = ViewState.Busy,
        child: Scaffold(
          // floatingActionButton: FloatingActionButton(onPressed: () {
          //   model.saveData();
          // }),
          body: Center(
            child: Text(this.runtimeType.toString()),
          ),
        ),
      ),
    );
  }
}
