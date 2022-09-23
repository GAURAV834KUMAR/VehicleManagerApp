import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class VehicleManagerFirebaseUser {
  VehicleManagerFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

VehicleManagerFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<VehicleManagerFirebaseUser> vehicleManagerFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<VehicleManagerFirebaseUser>(
            (user) => currentUser = VehicleManagerFirebaseUser(user));
