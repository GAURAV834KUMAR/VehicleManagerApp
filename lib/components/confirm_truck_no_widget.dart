import '../add_trip/add_trip_widget.dart';
import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmTruckNoWidget extends StatefulWidget {
  const ConfirmTruckNoWidget({
    Key? key,
    this.tripregid,
  }) : super(key: key);

  final dynamic tripregid;

  @override
  _ConfirmTruckNoWidgetState createState() => _ConfirmTruckNoWidgetState();
}

class _ConfirmTruckNoWidgetState extends State<ConfirmTruckNoWidget> {
  ApiCallResponse? addTruckRegNo;
  TextEditingController? truckRegNoController;

  @override
  void initState() {
    super.initState();
    truckRegNoController = TextEditingController(
        text: getJsonField(
      widget.tripregid,
      r'''$..truck_reg_no''',
    ).toString());
  }

  @override
  void dispose() {
    truckRegNoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0, -1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      'Truck Info',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.75, 0),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 0),
            child: TextFormField(
              controller: truckRegNoController,
              onChanged: (_) => EasyDebounce.debounce(
                'truckRegNoController',
                Duration(milliseconds: 2000),
                () => setState(() {}),
              ),
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Truck Info',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                suffixIcon: truckRegNoController!.text.isNotEmpty
                    ? InkWell(
                        onTap: () async {
                          truckRegNoController?.clear();
                          setState(() {});
                        },
                        child: Icon(
                          Icons.clear,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      )
                    : null,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                addTruckRegNo = await UpdateTruckRegNoCall.call(
                  stype: 'UpdateTruckNo',
                  trRefId: getJsonField(
                    widget.tripregid,
                    r'''$..tr_id''',
                  ),
                  truckRegNo: truckRegNoController!.text,
                );
                await UpdateTruckListTypeCall.call(
                  stype: 'UpdateTruckListType',
                  listType: getJsonField(
                    widget.tripregid,
                    r'''$..tr_id''',
                  ),
                );
                await Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: AddTripWidget(),
                  ),
                  (r) => false,
                );

                setState(() {});
              },
              text: 'Submit',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
