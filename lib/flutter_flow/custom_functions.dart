import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

bool intToBoolen(
  int? vlu,
  int? name,
  int? id,
) {
  if (vlu == 0) {
    return false;
  }
  if (name == 0) {
    return false;
  }
  if (id == 0) {
    return false;
  } else {
    return true;
  }
}

String truckNoFormate(String? no) {
  // get only first two letters
  String format = no!.substring(0, 2);
  return format;
}

int freight(
  int? rate,
  int? total,
  int? fixed,
) {
  // Multiply rate and total
  if (rate != 0 && total != 0) {
    return rate! * total!;
  } else {
    return fixed!;
  }
}

String truckNo6(String? no) {
  // get only first 6 gigit
  return no!.substring(0, 6);
}

String truckno4(String? no) {
  // get last 4 digits
  return no!.substring(no.length - 4, no.length);
}

bool visible(String? vlu) {
  {
    if (vlu == 'null') {
      return false;
    } else {
      return true;
    }
  }
}

int? billTypeVisible(String? vlu) {
  {
    if (vlu == 'Fixed') {
      return 0;
    }
    if (vlu == 'Per Tonne') {
      return 1;
    }
    if (vlu == 'More') {
      return 2;
    }
  }
}

int? billTypeNotVisible(String? vlu) {
  {
    if (vlu != 'Fixed') {
      return 0;
    }
  }
}

int? billTypeNotVisiblePer(String? vlu) {
  {
    if (vlu != 'Per Tonne') {
      return 1;
    }
  }
}

bool intToBoolean1(int? vlu) {
  if (vlu == 0) {
    return false;
  } else {
    return true;
  }
}

bool billType(String? type) {
  {
    if (type == 'Fixed') {
      return false;
    } else {
      return true;
    }
  }
}

String stringAfter3(String? vlu) {
  return vlu!.substring(3);
}

bool billtypemore(String? vlu) {
  // Add your function code here!
  if (vlu != 'null') {
    return false;
  } else {
    return true;
  }
}

bool moreDetails(int? vlu) {
  // Add your function code here!
  if (vlu == 1) {
    return true;
  } else {
    return false;
  }
}
