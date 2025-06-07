import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'builder_caturday_name_widget.dart' show BuilderCaturdayNameWidget;
import 'package:flutter/material.dart';

class BuilderCaturdayNameModel
    extends FlutterFlowModel<BuilderCaturdayNameWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for hooman_name widget.
  FocusNode? hoomanNameFocusNode;
  TextEditingController? hoomanNameTextController;
  String? Function(BuildContext, String?)? hoomanNameTextControllerValidator;
  String? _hoomanNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[A-Za-z]+\$').hasMatch(val)) {
      return 'Can\'t use numbers or symbols';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    hoomanNameTextControllerValidator = _hoomanNameTextControllerValidator;
  }

  @override
  void dispose() {
    hoomanNameFocusNode?.dispose();
    hoomanNameTextController?.dispose();
  }
}
