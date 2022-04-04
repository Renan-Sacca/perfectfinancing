import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DadosCompletoWidget extends StatefulWidget {
  const DadosCompletoWidget({
    Key key,
    this.dado,
  }) : super(key: key);

  final int dado;

  @override
  _DadosCompletoWidgetState createState() => _DadosCompletoWidgetState();
}

class _DadosCompletoWidgetState extends State<DadosCompletoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: FutureBuilder<ApiCallResponse>(
            future: NubankdCall.call(
              id: widget.dado,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: SpinKitCircle(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 50,
                    ),
                  ),
                );
              }
              final columnNubankdResponse = snapshot.data;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    getJsonField(
                      (columnNubankdResponse?.jsonBody ?? ''),
                      r'''$.id''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Text(
                    getJsonField(
                      (columnNubankdResponse?.jsonBody ?? ''),
                      r'''$.operacao''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Text(
                    getJsonField(
                      (columnNubankdResponse?.jsonBody ?? ''),
                      r'''$.valor''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
