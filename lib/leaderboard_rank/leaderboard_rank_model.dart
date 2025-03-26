import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'leaderboard_rank_widget.dart' show LeaderboardRankWidget;
import 'package:flutter/material.dart';

class LeaderboardRankModel extends FlutterFlowModel<LeaderboardRankWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    navbarModel.dispose();
  }
}
