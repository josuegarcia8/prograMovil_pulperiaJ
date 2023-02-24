import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/bs_factura_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TxtProducto widget.
  TextEditingController? txtProductoController;
  String? Function(BuildContext, String?)? txtProductoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtProductoController?.dispose();
  }

  /// Additional helper methods are added here.

}
