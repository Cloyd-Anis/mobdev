class ValidationMixin{
  String validateEmail(String value){
    if(value.contains("@")){
      return null;
    }else{
      return "Incorrect Email Format";
    }
  }
  String validatePassword(String value){
    if(value.length >= 8){
      return null;
    }else{
      return "Password is too short!";
    }
  }
  // String confirmPassword(String pass1, String pass2 ){
  //   if(pass1 != pass2){
  //     return "Password didn't match!";
  //   }else{
  //     return null;
  //   }
  // }
}