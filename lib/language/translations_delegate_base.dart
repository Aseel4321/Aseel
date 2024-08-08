import 'dart:async';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';


class TranslationBase {
  TranslationBase(this.locale);

  final Locale locale;

  static TranslationBase of(BuildContext context) {
    return Localizations.of<TranslationBase>(context, TranslationBase) ??
        TranslationBase(Locale(ShortTermManager().language ?? "en"));
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': { "loginerror":"The username or password is incorrect. Please confirm and try again","phoneerror":"Phone number is incorrect", 'welcome':'Welcome',
      'phone':'Phone Number',
      'fullname':'Full Name',
      'signup':'SIGN UP',
      'signin':'SIGN IN',
      'email':'Email','Login':'LOG IN',
'FirstName':'First Name',
'LastName':'Last Name',
      'Username':'Username',
      'Password':'Password',
       'Age':'Age',
      'HomePage':'Home Page',
      'CreateAccount':'Create Account',
      'UsernameorEmail':'Username or Email',
      'ForgotPassword':'Forgot Password',
      'Login':'Login',
      'EnterCode':'Enter Code',
      'Resetpassword':'Reset password',
      'ConfirmPassword':'Confirm Password',
      'Password':'Password',
      'Confirm Account':'Confirm Account',
      'HomePage':'Home Page',
      'CreateAccount':'Create Account',
  'ConfirmAccount':'Confirm Account',
    "V1":'Password must meet the' ,
    "V2":'following requirements',
    "String1":"At least one letter",
    "StringC1":"At least one capital letter",
    "Number1":"At least one number",
    "String8":"Be at 8 characters",
    "String*":"At least one special character",},
    'ar': {'fullname':'اسم الكامل','ForgotPassword':'نسيت كلمه المرور', 'Login':'LOG IN','phone':'رقم الهاتف',
      'welcome':'مرحبا بكم',
      'signup':'انشاء حساب جديد',
      'signin':'تسجيل دخول',
      'email':'بريد الالكتروني',
      'FirstName':'اسم الاول',
      'LastName':'اسم العائله',
      'Username':'اسم المستخدم',
      'Password':'كلمه المرور',
      'Age':'العمر',
      'HomePage':'الصفحه الرئيسيه',
      'CreateAccount':'انشاء حساب',
  'UsernameorEmail':'اسم المستخدم او البريد الالكتروني ',
  'signup':'انشاء حساب جديد',
  'signin':'تسجيل دخول',
  'EnterCode':'أدخل الرمز',
  'Reset password':'اعاده تعيين كلمه المرور',
  'ConfirmPassword':'تاكيد كلمه المرور',
  'SetNewPassword':'تعيين كلمه مرور جديده',
  'ConfirmAccount':'تاكيد الحساب',
  'Age':'العمر',
  'HomePage':'الصفحه الرئيسيه',
  'CreateAccount':'انشاء حساب'
    ,"V1":'يجب التحقق ان كلمه المرور' ,
    "V2":'من المتطلبات التاليه',
    "String1":"حرف واحد على الاقل",
      "StringC1":"حرف واحدكبير على الاقل",
      "Number1":"رقم واحد على الاقل",
      "String8":"على الاقل 8 احرف",
      "String*":"على الاقل رمز واحد خاص",
      "phoneerror":"رقم الهاتف غير صحيح",
      "loginerror":"اسم المستخدم او كلمه المرور خطأ الرجاء التأكد و المحاوله مره اخرى",
    },
  };
  String? get phone{
    return _localizedValues[locale.languageCode]?['phone'];
  }
  String? get StringCP{
    return _localizedValues[locale.languageCode]?['String*'];
  }
  String? get Number1{
    return _localizedValues[locale.languageCode]?['Number1'];
  }
  String? get V2{
    return _localizedValues[locale.languageCode]?['V2'];
  }
  String? get String8{
    return _localizedValues[locale.languageCode]?['String8'];
  }
  String? get loginerror{
    return _localizedValues[locale.languageCode]?['loginerror'];
  }
  String? get V1{
    return _localizedValues[locale.languageCode]?['V1'];
  }
  String? get String1{
    return _localizedValues[locale.languageCode]?['String1'];
  }
  String? get StringC1{
    return _localizedValues[locale.languageCode]?['StringC1'];
  }

  String? get welcome{
    return _localizedValues[locale.languageCode]?['welcome'];
  }
  String? get signup{
    return _localizedValues[locale.languageCode]?['signup'];
  }
  String? get phoneerror{
    return _localizedValues[locale.languageCode]?['phoneerror'];
  }
  String? get signin{
    return _localizedValues[locale.languageCode]?['signin'];
  }
  String? get email{
    return _localizedValues[locale.languageCode]?['email'];
  }
  String? get FirstName{
  return _localizedValues[locale.languageCode]?['FirstName'];
}
  String? get LastName{
    return _localizedValues[locale.languageCode]?['LastName'];
  }
  String? get Username{
    return _localizedValues[locale.languageCode]?['Username'];
  }
  String? get Age{
    return _localizedValues[locale.languageCode]?['Age'];
  }
  String? get fullname{
    return _localizedValues[locale.languageCode]?['fullname'];
  }
  String? get HomePage {
    return _localizedValues[locale.languageCode]?['HomePage'];
  }
  String? get CreateAccount{
    return _localizedValues[locale.languageCode]?['CreateAccount'];
  }
  String? get select {
    print('s');
    print(locale.languageCode);
    return _localizedValues[locale.languageCode]?['select'];
  }

  String? get password {
    return _localizedValues[locale.languageCode]?['Password'];
  }
  String? get sigin {
    return _localizedValues[locale.languageCode]?['signin'];
  }

  String? get Login {
    return _localizedValues[locale.languageCode]?['Login'];
  }

  String? get UsernameorEmail {
    return _localizedValues[locale.languageCode]?['UsernameorEmail'];
  }

  String? get ForgotPassword {
    return _localizedValues[locale.languageCode]?['ForgotPassword'];
  }

  String? get forgotpassword {
    return _localizedValues[locale.languageCode]?['ForgotPassword'];
  }

  String? get login_String {
    return _localizedValues[locale.languageCode]?['login_String'];
  }

  String? get EnterCode {
    return _localizedValues[locale.languageCode]?['EnterCode'];
  }



  String? get Signupbutton {
    return _localizedValues[locale.languageCode]?['Signupbutton'];
  }

  String? get re_email {
    return _localizedValues[locale.languageCode]?['re_email'];
  }

  String? get Number_phone {
    return _localizedValues[locale.languageCode]?['Number_phone'];
  }

  String? get name1 {
    return _localizedValues[locale.languageCode]?['name'];
  }

  String? get re_password {
    return _localizedValues[locale.languageCode]?['re_Password'];
  }


  String? get ConfirmAccount{
    return _localizedValues[locale.languageCode]?['ConfirmAccount'];
  }

  String? get loginn {
    return _localizedValues[locale.languageCode]?['login'];
  }

  String? get ConfirmPassword {
    return _localizedValues[locale.languageCode]?['ConfirmPassword'];
  }

  String? get string1 {
    return _localizedValues[locale.languageCode]?['String1'];
  }

  String? get string2 {
    return _localizedValues[locale.languageCode]?['String2'];
  }

  String? get nameMust {
    return _localizedValues[locale.languageCode]?['nameMust'];
  }

  String? get street {
    return _localizedValues[locale.languageCode]?['street'];
  }

  String? get nameOfHospital {
    return _localizedValues[locale.languageCode]?['nameOfHospital'];
  }

  String? get buildNumber {
    return _localizedValues[locale.languageCode]?['buildNumber'];
  }

  String? get noVacationRequested {
    return _localizedValues[locale.languageCode]?['noVacationRequested'];
  }



}

class ShortTermManager {  static final ShortTermManager _shortTermManager =
ShortTermManager._internal();

// singleton class
String? language;
String fbToken = "null";
late String minCartAmount;
late String deiceType;

void clear() {
}

void setLanguage(String? language) {
  this.language = language;
}

void setMinCartAmount(String minCartAmount) {
  this.minCartAmount = minCartAmount;
}

void setFbToken(String fbToken) {
  this.fbToken = fbToken;
}

void setDeiceType(String deiceType) {
  this.deiceType = deiceType;
}

String getDeiceType() {
  return this.deiceType;
}

String getFbToken() {
  return this.fbToken;
}

String getMinCartAmount() {
  return this.minCartAmount;
}

String? getLanguage() {
  return this.language;
}

factory ShortTermManager() {
  return _shortTermManager;
}

ShortTermManager._internal();
}

class TranslationBaseDelegate extends LocalizationsDelegate<TranslationBase> {
  const TranslationBaseDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<TranslationBase> load(Locale locale) {
    return SynchronousFuture<TranslationBase>(TranslationBase(locale));
  }

  @override
  bool shouldReload(TranslationBaseDelegate old) => false;
}
