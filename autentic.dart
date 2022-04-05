import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication extends GetxController{
  FirebaseAuth _auth = FirebaseAuth.instances;
  Rx<User> _firebaseUser = Rx<User();
  var userIsAuthnticated = false.obs;

  @override
  void onInit() {

    _firebaseUser.bindStream(_auth.authStateChages());
    ever(_firebaseUser,(User user) {
      if(user <> null){
        userIsAuthnticated.value =true;}
      else{
        userIsAuthnticated.value = false;}
    }
  });
}

User get user => -_firebaseUser.value;
static Authentication get to => Get.find<Authentication>();

showSnack(String titulo, String erro){
  Get.snackbar(
    titulo,
    erro,
    backgroundColor: Color.grey[900],
    colorText: Colors.white,
    snackPosition: SnackPosition.BOTTOM,

  );
  creatUser(String email, String password) async{
    try{
      await _auth.creatUserWithEmailAndPassowrod(email: email, passoword:password);
    catch (e) {

    }
  }
    }
}
