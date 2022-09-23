import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateUserProfileCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? name = '',
    String? phone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateUserProfile',
      apiUrl: 'https://vm.tensoftware.in/api/User/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'name': name,
        'phone': phone,
      },
      returnBody: true,
    );
  }
}

class SelectProfileCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectProfile',
      apiUrl: 'https://vm.tensoftware.in/api/User/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'id': id,
      },
      returnBody: true,
    );
  }
}

class SelectTruckCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? trId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectTruck',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'tr_id': trId,
      },
      returnBody: true,
    );
  }
}

class SelectTruckExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? trExId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectTruckExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'tr_ex_id': trExId,
      },
      returnBody: true,
    );
  }
}

class SelectTruckDocumentCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? docId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectTruckDocument',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'doc_id': docId,
      },
      returnBody: true,
    );
  }
}

class CreateTripCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    int? trRefId,
    String? cusName = '',
    String? routeOrigin = '',
    String? routeDestination = '',
    String? partyBillType = '',
    String? startDate = '',
    int? startKm = 0,
    int? ratePer,
    int? freightAmt,
    int? lrNo = 0,
    String? materialName = '--',
    String? notes = '--',
    int? cusRefId,
    int? total,
    String? truckRegNo = '',
    int? tiListType,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateTrip',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'tr_ref_id': trRefId,
        'cus_name': cusName,
        'route_origin': routeOrigin,
        'route_destination': routeDestination,
        'party_bill_type': partyBillType,
        'start_date': startDate,
        'start_km': startKm,
        'rate_per': ratePer,
        'freight_amt': freightAmt,
        'Lr_no': lrNo,
        'material_name': materialName,
        'notes': notes,
        'cus_ref_id': cusRefId,
        'total': total,
        'truck_reg_no': truckRegNo,
        'ti_list_type': tiListType,
      },
      returnBody: true,
    );
  }
}

class CreateTruckCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    String? truckRegNo = '',
    String? truckType = '',
    int? capacity,
    int? bodyLn,
    int? trOwRefId,
    int? ownertype,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateTruck',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'truck_reg_no': truckRegNo,
        'truck_type': truckType,
        'capacity': capacity,
        'body_ln': bodyLn,
        'tr_ow_ref_id': trOwRefId,
        'ownertype': ownertype,
      },
      returnBody: true,
    );
  }
}

class SelectTripCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? tiId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectTrip',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ti_id': tiId,
      },
      returnBody: true,
    );
  }
}

class CreateTripExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    int? tiRefId,
    String? exType = '',
    String? exDate = '',
    int? exAmt,
    String? notes = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateTripExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'ti_ref_id': tiRefId,
        'ex_type': exType,
        'ex_date': exDate,
        'ex_amt': exAmt,
        'notes': notes,
      },
      returnBody: true,
    );
  }
}

class SelectTripExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? tiExId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectTripExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ti_ex_id': tiExId,
      },
      returnBody: true,
    );
  }
}

class PhoneSearchCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? phone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PhoneSearch',
      apiUrl: 'https://vm.tensoftware.in/api/User/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'phone': phone,
      },
      returnBody: true,
    );
  }
}

class TruckOwnerListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? ownership = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TruckOwnerList',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ownership': ownership,
      },
      returnBody: true,
    );
  }
}

class CreateSupplierTruckOwnerCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    String? ownership = '',
    String? supplierName = '',
    String? supplierPhone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateSupplierTruckOwner',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'ownership': ownership,
        'supplier_name': supplierName,
        'supplier_phone': supplierPhone,
      },
      returnBody: true,
    );
  }
}

class CreateDriverCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    String? ownership = '',
    String? driverName = '',
    String? driverPhone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateDriver',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'ownership': ownership,
        'driver_name': driverName,
        'driver_phone': driverPhone,
      },
      returnBody: true,
    );
  }
}

class SearchByTruckRegNoCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? truckRegNo = '',
    int? userRefId,
    String? docName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchByTruckRegNo',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'truck_reg_no': truckRegNo,
        'user_ref_id': userRefId,
        'doc_name': docName,
      },
      returnBody: true,
    );
  }
}

class CreateCustomerCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    String? cusName = '',
    String? cusPhone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateCustomer',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'cus_name': cusName,
        'cus_phone': cusPhone,
      },
      returnBody: true,
    );
  }
}

class CustomerListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CustomerList',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class CreateTripByCustomerCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    int? cusRefId,
    String? cusName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateTripByCustomer',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'cus_ref_id': cusRefId,
        'cus_name': cusName,
      },
      returnBody: true,
    );
  }
}

class UpdateTripCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? routeOrigin = '',
    String? routeDestination = '',
    int? startKm,
    int? lrNo,
    String? materialName = '',
    String? notes = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTrip',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'route_origin': routeOrigin,
        'route_destination': routeDestination,
        'start_km': startKm,
        'Lr_no': lrNo,
        'material_name': materialName,
        'notes': notes,
      },
      returnBody: true,
    );
  }
}

class UpdateTruckRegNoCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? trRefId,
    String? truckRegNo = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTruckRegNo',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'tr_ref_id': trRefId,
        'truck_reg_no': truckRegNo,
      },
      returnBody: true,
    );
  }
}

class UpdateBillCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? partyBillType = '',
    String? startDate = '',
    int? ratePer,
    int? total,
    int? freightAmt,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateBill',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'party_bill_type': partyBillType,
        'start_date': startDate,
        'rate_per': ratePer,
        'total': total,
        'freight_amt': freightAmt,
      },
      returnBody: true,
    );
  }
}

class UpdateFixedBillCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? partyBillType = '',
    String? startDate = '',
    String? freightAmt = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateFixedBill',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'party_bill_type': partyBillType,
        'start_date': startDate,
        'freight_amt': freightAmt,
      },
      returnBody: true,
    );
  }
}

class TruckNoListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TruckNoList',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class UpdateTruckDocumentCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? fldName = '',
    String? ddate = '',
    int? trId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTruckDocument',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'fld_name': fldName,
        'ddate': ddate,
        'tr_id': trId,
      },
      returnBody: true,
    );
  }
}

class DisplayTripCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DisplayTrip',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class ListTruckCustomExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ListTruckCustomExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class UpdateTruckExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    String? exDate = '',
    int? exAmt,
    String? notes = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTruckExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'ex_date': exDate,
        'ex_amt': exAmt,
        'notes': notes,
      },
      returnBody: true,
    );
  }
}

class CreateTruckExpenseByTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    String? exType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateTruckExpenseByType',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'ex_type': exType,
      },
      returnBody: true,
    );
  }
}

class CreateCustExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    String? custExpense = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateCustExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'cust_expense': custExpense,
      },
      returnBody: true,
    );
  }
}

class UpdateExpenseTruckNoCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? trRefId,
    String? truckRegNo = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateExpenseTruckNo',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'tr_ref_id': trRefId,
        'truck_reg_no': truckRegNo,
      },
      returnBody: true,
    );
  }
}

class DisplayTruckExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DisplayTruckExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class UpdateTruckExpenseTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? exType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTruckExpenseType',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ex_type': exType,
      },
      returnBody: true,
    );
  }
}

class TripListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TripList',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class UpdateTripExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? exDate = '',
    int? exAmt,
    String? notes = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTripExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ex_date': exDate,
        'ex_amt': exAmt,
        'notes': notes,
      },
      returnBody: true,
    );
  }
}

class UpdateTripExpenseTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? exType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTripExpenseType',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ex_type': exType,
      },
      returnBody: true,
    );
  }
}

class CreateTripExpenseByTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    String? exType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateTripExpenseByType',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'ex_type': exType,
      },
      returnBody: true,
    );
  }
}

class ListTripCustExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ListTripCustExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class DisplayTripExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DisplayTripExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class UpdateSelectTripCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? tiRefId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateSelectTrip',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ti_ref_id': tiRefId,
      },
      returnBody: true,
    );
  }
}

class DisplayTripExpenseTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DisplayTripExpenseType',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class UpdateTruckListTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? listType,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTruckListType',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'list_type': listType,
      },
      returnBody: true,
    );
  }
}

class TruckExpenseListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TruckExpenseList',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class TripExpenseListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TripExpenseList',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class UpdateTripPaymentCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? paymentDate = '',
    int? paymentAmt,
    String? paymentNotes = '',
    int? tiId,
    int? freightAmt,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTripPayment',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'payment_date': paymentDate,
        'payment_amt': paymentAmt,
        'payment_notes': paymentNotes,
        'ti_id': tiId,
        'freight_amt': freightAmt,
      },
      returnBody: true,
    );
  }
}

class UpdateTripCompleteCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? endDate = '',
    int? endKm,
    int? tiId,
    int? tiListType,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTripComplete',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'end_date': endDate,
        'end_km': endKm,
        'ti_id': tiId,
        'ti_list_type': tiListType,
      },
      returnBody: true,
    );
  }
}

class UpdateAfterCreateTruckListTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? trId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateAfterCreateTruckListType',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'tr_id': trId,
      },
      returnBody: true,
    );
  }
}

class CreateTruckTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    String? truckType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateTruckType',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'truck_type': truckType,
      },
      returnBody: true,
    );
  }
}

class SelectTruckTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectTruckType',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class CompleteTripCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? listType,
    int? trId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CompleteTrip',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'list_type': listType,
        'tr_id': trId,
      },
      returnBody: true,
    );
  }
}

class CreateTruckExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? userRefId,
    int? trRefId,
    String? exType = '',
    String? exDate = '',
    int? exAmt,
    String? notes = '',
    String? truckRegNo = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateTruckExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Truck/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'user_ref_id': userRefId,
        'tr_ref_id': trRefId,
        'ex_type': exType,
        'ex_date': exDate,
        'ex_amt': exAmt,
        'notes': notes,
        'truck_reg_no': truckRegNo,
      },
      returnBody: true,
    );
  }
}

class UpdateCompleteTripCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? tiListType,
    int? tiId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateCompleteTrip',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ti_list_type': tiListType,
        'ti_id': tiId,
      },
      returnBody: true,
    );
  }
}

class UpdateTiListTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? tiListType,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTiListType',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ti_list_type': tiListType,
      },
      returnBody: true,
    );
  }
}

class CreateCustomExpenseCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? cusExType = '',
    int? userRefId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateCustomExpense',
      apiUrl: 'https://vm.tensoftware.in/api/Trip/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'cus_ex_type': cusExType,
        'user_ref_id': userRefId,
      },
      returnBody: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
