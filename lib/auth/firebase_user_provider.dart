import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PerfectFinancingFirebaseUser {
  PerfectFinancingFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

PerfectFinancingFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PerfectFinancingFirebaseUser> perfectFinancingFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PerfectFinancingFirebaseUser>(
            (user) => currentUser = PerfectFinancingFirebaseUser(user));
