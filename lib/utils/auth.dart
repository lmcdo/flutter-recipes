import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<GoogleSignInAccount> getSignedInAccount(
  GoogleSignIn googleSignIn) async {
    GoogleSignInAccount account = googleSignIn.currentUser;
    if (account == null ) {
      account = await googleSignIn.signInSilently();
    }
    return account; 
  }

Future<FirebaseUser> signIntoFirebase(
  GoogleSignInAccount googleSignInAccount) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseUser user = await _auth.currentUser();
      final uid = user.uid;
     
    GoogleSignInAuthentication googleAuth = 
     await googleSignInAccount.authentication;
     
  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  
     
      return await _auth.signInWithCredential(
        credential
      );
  }