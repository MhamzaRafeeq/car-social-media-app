import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'creat_post_widget.dart' show CreatPostWidget;
import 'package:flutter/material.dart';

class CreatPostModel extends FlutterFlowModel<CreatPostWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
