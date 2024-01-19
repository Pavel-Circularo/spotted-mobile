import '/auth/supabase_auth/auth_util.dart';
import '/components/confirm_email_reset_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_register_page_widget.dart' show LoginRegisterPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginRegisterPageModel extends FlutterFlowModel<LoginRegisterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for EmailLogin widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // State field(s) for PasswordLogin widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;
  // State field(s) for EmailReg widget.
  FocusNode? emailRegFocusNode;
  TextEditingController? emailRegController;
  String? Function(BuildContext, String?)? emailRegControllerValidator;
  // State field(s) for PasswordReg widget.
  FocusNode? passwordRegFocusNode;
  TextEditingController? passwordRegController;
  late bool passwordRegVisibility;
  String? Function(BuildContext, String?)? passwordRegControllerValidator;
  // State field(s) for ConfirmPw widget.
  FocusNode? confirmPwFocusNode;
  TextEditingController? confirmPwController;
  late bool confirmPwVisibility;
  String? Function(BuildContext, String?)? confirmPwControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginVisibility = false;
    passwordRegVisibility = false;
    confirmPwVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailLoginFocusNode?.dispose();
    emailLoginController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginController?.dispose();

    emailRegFocusNode?.dispose();
    emailRegController?.dispose();

    passwordRegFocusNode?.dispose();
    passwordRegController?.dispose();

    confirmPwFocusNode?.dispose();
    confirmPwController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
