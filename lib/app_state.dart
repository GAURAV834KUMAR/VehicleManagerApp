import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _Model = prefs.getString('ff_Model') ?? _Model;
    _Capacity = prefs.getInt('ff_Capacity') ?? _Capacity;
    _BodyLength = prefs.getInt('ff_BodyLength') ?? _BodyLength;
    _DocumentType = prefs.getString('ff_DocumentType') ?? _DocumentType;
    if (prefs.containsKey('ff_ExpiryDate')) {
      try {
        _ExpiryDate = jsonDecode(prefs.getString('ff_ExpiryDate') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_ComDocumentType')) {
      try {
        _ComDocumentType =
            jsonDecode(prefs.getString('ff_ComDocumentType') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_SupplierName')) {
      try {
        _SupplierName = jsonDecode(prefs.getString('ff_SupplierName') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_TruckOwnerId')) {
      try {
        _TruckOwnerId = jsonDecode(prefs.getString('ff_TruckOwnerId') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_DriverName')) {
      try {
        _DriverName = jsonDecode(prefs.getString('ff_DriverName') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_DocId')) {
      try {
        _DocId = jsonDecode(prefs.getString('ff_DocId') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_CustomerName')) {
      try {
        _CustomerName = jsonDecode(prefs.getString('ff_CustomerName') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_TripId')) {
      try {
        _TripId = jsonDecode(prefs.getString('ff_TripId') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_TruckregNo')) {
      try {
        _TruckregNo = jsonDecode(prefs.getString('ff_TruckregNo') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_BillId')) {
      try {
        _BillId = jsonDecode(prefs.getString('ff_BillId') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _OwnerType = prefs.getInt('ff_OwnerType') ?? _OwnerType;
    if (prefs.containsKey('ff_TripCusId')) {
      try {
        _TripCusId = jsonDecode(prefs.getString('ff_TripCusId') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _ExpenseType = prefs.getString('ff_ExpenseType') ?? _ExpenseType;
    _CustExpenseType =
        prefs.getString('ff_CustExpenseType') ?? _CustExpenseType;
    if (prefs.containsKey('ff_trregid')) {
      try {
        _trregid = jsonDecode(prefs.getString('ff_trregid') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _TruckType = prefs.getString('ff_TruckType') ?? _TruckType;
    _TruckRegNo = prefs.getString('ff_TruckRegNo') ?? _TruckRegNo;
    _TruckId = prefs.getInt('ff_TruckId') ?? _TruckId;
    _CusId = prefs.getInt('ff_CusId') ?? _CusId;
    _BillingType = prefs.getString('ff_BillingType') ?? _BillingType;
    _CusName = prefs.getString('ff_CusName') ?? _CusName;
    _BillVisible = prefs.getString('ff_BillVisible') ?? _BillVisible;
    _AddMoreDetails = prefs.getInt('ff_AddMoreDetails') ?? _AddMoreDetails;
    _date = prefs.getInt('ff_date') ?? _date;
  }

  late SharedPreferences prefs;

  String _Model = '';
  String get Model => _Model;
  set Model(String _value) {
    _Model = _value;
    prefs.setString('ff_Model', _value);
  }

  int _Capacity = 0;
  int get Capacity => _Capacity;
  set Capacity(int _value) {
    _Capacity = _value;
    prefs.setInt('ff_Capacity', _value);
  }

  int _BodyLength = 0;
  int get BodyLength => _BodyLength;
  set BodyLength(int _value) {
    _BodyLength = _value;
    prefs.setInt('ff_BodyLength', _value);
  }

  String _DocumentType = '';
  String get DocumentType => _DocumentType;
  set DocumentType(String _value) {
    _DocumentType = _value;
    prefs.setString('ff_DocumentType', _value);
  }

  dynamic _ExpiryDate;
  dynamic get ExpiryDate => _ExpiryDate;
  set ExpiryDate(dynamic _value) {
    _ExpiryDate = _value;
    prefs.setString('ff_ExpiryDate', jsonEncode(_value));
  }

  dynamic _ComDocumentType;
  dynamic get ComDocumentType => _ComDocumentType;
  set ComDocumentType(dynamic _value) {
    _ComDocumentType = _value;
    prefs.setString('ff_ComDocumentType', jsonEncode(_value));
  }

  dynamic _SupplierName;
  dynamic get SupplierName => _SupplierName;
  set SupplierName(dynamic _value) {
    _SupplierName = _value;
    prefs.setString('ff_SupplierName', jsonEncode(_value));
  }

  dynamic _TruckOwnerId;
  dynamic get TruckOwnerId => _TruckOwnerId;
  set TruckOwnerId(dynamic _value) {
    _TruckOwnerId = _value;
    prefs.setString('ff_TruckOwnerId', jsonEncode(_value));
  }

  dynamic _DriverName;
  dynamic get DriverName => _DriverName;
  set DriverName(dynamic _value) {
    _DriverName = _value;
    prefs.setString('ff_DriverName', jsonEncode(_value));
  }

  dynamic _DocId;
  dynamic get DocId => _DocId;
  set DocId(dynamic _value) {
    _DocId = _value;
    prefs.setString('ff_DocId', jsonEncode(_value));
  }

  dynamic _CustomerName;
  dynamic get CustomerName => _CustomerName;
  set CustomerName(dynamic _value) {
    _CustomerName = _value;
    prefs.setString('ff_CustomerName', jsonEncode(_value));
  }

  dynamic _TripId;
  dynamic get TripId => _TripId;
  set TripId(dynamic _value) {
    _TripId = _value;
    prefs.setString('ff_TripId', jsonEncode(_value));
  }

  dynamic _TruckregNo;
  dynamic get TruckregNo => _TruckregNo;
  set TruckregNo(dynamic _value) {
    _TruckregNo = _value;
    prefs.setString('ff_TruckregNo', jsonEncode(_value));
  }

  dynamic _BillId;
  dynamic get BillId => _BillId;
  set BillId(dynamic _value) {
    _BillId = _value;
    prefs.setString('ff_BillId', jsonEncode(_value));
  }

  int _OwnerType = 0;
  int get OwnerType => _OwnerType;
  set OwnerType(int _value) {
    _OwnerType = _value;
    prefs.setInt('ff_OwnerType', _value);
  }

  dynamic _TripCusId;
  dynamic get TripCusId => _TripCusId;
  set TripCusId(dynamic _value) {
    _TripCusId = _value;
    prefs.setString('ff_TripCusId', jsonEncode(_value));
  }

  String _ExpenseType = '';
  String get ExpenseType => _ExpenseType;
  set ExpenseType(String _value) {
    _ExpenseType = _value;
    prefs.setString('ff_ExpenseType', _value);
  }

  String _CustExpenseType = '';
  String get CustExpenseType => _CustExpenseType;
  set CustExpenseType(String _value) {
    _CustExpenseType = _value;
    prefs.setString('ff_CustExpenseType', _value);
  }

  dynamic _trregid;
  dynamic get trregid => _trregid;
  set trregid(dynamic _value) {
    _trregid = _value;
    prefs.setString('ff_trregid', jsonEncode(_value));
  }

  String _TruckType = '';
  String get TruckType => _TruckType;
  set TruckType(String _value) {
    _TruckType = _value;
    prefs.setString('ff_TruckType', _value);
  }

  String _TruckRegNo = '';
  String get TruckRegNo => _TruckRegNo;
  set TruckRegNo(String _value) {
    _TruckRegNo = _value;
    prefs.setString('ff_TruckRegNo', _value);
  }

  int _TruckId = 0;
  int get TruckId => _TruckId;
  set TruckId(int _value) {
    _TruckId = _value;
    prefs.setInt('ff_TruckId', _value);
  }

  int _CusId = 0;
  int get CusId => _CusId;
  set CusId(int _value) {
    _CusId = _value;
    prefs.setInt('ff_CusId', _value);
  }

  String _BillingType = '';
  String get BillingType => _BillingType;
  set BillingType(String _value) {
    _BillingType = _value;
    prefs.setString('ff_BillingType', _value);
  }

  String _CusName = '';
  String get CusName => _CusName;
  set CusName(String _value) {
    _CusName = _value;
    prefs.setString('ff_CusName', _value);
  }

  String _BillVisible = '';
  String get BillVisible => _BillVisible;
  set BillVisible(String _value) {
    _BillVisible = _value;
    prefs.setString('ff_BillVisible', _value);
  }

  int _AddMoreDetails = 0;
  int get AddMoreDetails => _AddMoreDetails;
  set AddMoreDetails(int _value) {
    _AddMoreDetails = _value;
    prefs.setInt('ff_AddMoreDetails', _value);
  }

  int _date = 0;
  int get date => _date;
  set date(int _value) {
    _date = _value;
    prefs.setInt('ff_date', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
