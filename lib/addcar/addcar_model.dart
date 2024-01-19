import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'addcar_widget.dart' show AddcarWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddcarModel extends FlutterFlowModel<AddcarWidget> {
  ///  Local state fields for this page.

  bool photoUploaded = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for model widget.
  FocusNode? modelFocusNode;
  TextEditingController? modelController;
  String? Function(BuildContext, String?)? modelControllerValidator;
  String? _modelControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'Model name too long';
    }

    return null;
  }

  // State field(s) for color widget.
  FocusNode? colorFocusNode;
  TextEditingController? colorController;
  String? Function(BuildContext, String?)? colorControllerValidator;
  // State field(s) for year widget.
  FocusNode? yearFocusNode;
  TextEditingController? yearController;
  String? Function(BuildContext, String?)? yearControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Recognize car)] action in Button widget.
  ApiCallResponse? output;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    modelControllerValidator = _modelControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    modelFocusNode?.dispose();
    modelController?.dispose();

    colorFocusNode?.dispose();
    colorController?.dispose();

    yearFocusNode?.dispose();
    yearController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
