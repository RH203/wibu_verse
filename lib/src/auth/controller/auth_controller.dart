import 'package:firebase_auth/firebase_auth.dart';
import 'package:wibu_verse/app_logger.dart';
import 'package:wibu_verse/core/di/injection.dart';

class AuthController {
  AuthController();

  Future<bool> login(String email, String password) async {
    try {
      UserCredential _signin = await getIt<FirebaseAuth>()
          .signInWithEmailAndPassword(email: email, password: password);

      User? _user = _signin.user;

      return _user != null ? true : false;
    } on FirebaseAuthException catch (e) {
      String errorMessage = e.toString();
      AppLogger.error(
          'Failed with error code [CONTROLLER AUTH] (Sign in): ${e.code}');
      return false;
    } catch (error, stacktrace) {
      AppLogger.error('Error during signup: $error [$stacktrace]');
      return false;
    }
  }

  Future<bool> signup(String fullname, String email, String password) async {
    try {
      UserCredential _signup = await getIt<FirebaseAuth>()
          .createUserWithEmailAndPassword(email: email, password: password);

      User? _user = _signup.user;

      if (_user != null) {
        _user.updateDisplayName(fullname);
      }
      return true;
    } on FirebaseAuthException catch (e) {
      String errorMessage = e.toString();
      AppLogger.error(
          'Failed with error code [CONTROLLER AUTH] (Sign up): ${e.code}');
      return false;
    } catch (error, stacktrace) {
      AppLogger.error('Error during signup: $error [$stacktrace]');
      return false;
    }
  }
}
