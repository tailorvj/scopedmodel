// Flutter
import 'package:flutter/material.dart';
// External Libraries

// My code
import 'package:scopedmodel/enums/view_states.dart';
import 'package:scopedmodel/ui/views/success_view.dart';
import 'package:scopedmodel/ui/views/error_view.dart';
import 'package:scopedmodel/ui/widgets/busy_overlay.dart';
import 'base_view.dart';

import 'package:scopedmodel/scoped_models/home_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, child, model) => BusyOverlay(
        show: model.state == ViewState.Busy,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () async {
            print('entering HomeView.saveData()');
            var result = await model.saveData();
            print('finished HomeView.saveData()');
            if (result) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SuccessView(title: 'Duplicate Me')));
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ErrorView()));
            }
          }),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // _getBodyUI(model.state),
                Text(model.title),
                Text(model.subtitle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _getBodyUI(ViewState state) {
  switch (state) {
    case ViewState.Busy:
      return CircularProgressIndicator();
    case ViewState.Retrieved:
    default:
      return Text('Done');
  }
}
