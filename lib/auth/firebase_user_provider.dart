import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PulperiaJFirebaseUser {
  PulperiaJFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PulperiaJFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PulperiaJFirebaseUser> pulperiaJFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PulperiaJFirebaseUser>(
      (user) {
        currentUser = PulperiaJFirebaseUser(user);
        return currentUser!;
      },
    );
