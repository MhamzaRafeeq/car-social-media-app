import '/flutter_flow/flutter_flow_util.dart';
import 'buttomsheetcomment_widget.dart' show ButtomsheetcommentWidget;
import 'package:flutter/material.dart';

class ButtomsheetcommentModel
    extends FlutterFlowModel<ButtomsheetcommentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
