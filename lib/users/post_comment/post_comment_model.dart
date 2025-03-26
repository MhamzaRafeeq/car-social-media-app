import '/components/post_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'post_comment_widget.dart' show PostCommentWidget;
import 'package:flutter/material.dart';

class PostCommentModel extends FlutterFlowModel<PostCommentWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Post component.
  late PostModel postModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    postModel = createModel(context, () => PostModel());
  }

  @override
  void dispose() {
    postModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
