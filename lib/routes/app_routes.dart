import 'package:facebook_ui/screens/login/forgot_password_email_screen.dart';
import 'package:facebook_ui/screens/login/forgot_password_mobile_screen.dart';
import 'package:facebook_ui/screens/login/login_screen.dart';
import 'package:facebook_ui/screens/login/new_password_screen.dart';
import 'package:facebook_ui/screens/login/otp_screen.dart';
import 'package:facebook_ui/screens/login/profil_login_screen.dart';
import 'package:facebook_ui/screens/message/message_chat_screen.dart';
import 'package:facebook_ui/screens/message/message_info_screen.dart';
import 'package:facebook_ui/screens/message/message_screen.dart';
import 'package:facebook_ui/screens/message/new_message_screen.dart';
import 'package:facebook_ui/screens/register/join_facbook_screen.dart';
import 'package:facebook_ui/screens/register/select_birthday_screen.dart';
import 'package:facebook_ui/screens/register/select_gender.dart';
import 'package:facebook_ui/screens/register/select_name_screen.dart';
import 'package:facebook_ui/screens/register/select_number_screen.dart';
import 'package:facebook_ui/screens/register/select_password_screen.dart';
import 'package:facebook_ui/screens/register/term_and_privacy_screen.dart';
import 'package:facebook_ui/screens/splash/splash_screen.dart';
import 'package:facebook_ui/screens/tap_view/friend_request_screen.dart';
import 'package:facebook_ui/screens/tap_view/home_screen.dart';
import 'package:facebook_ui/screens/tap_view/menu_screen.dart';
import 'package:facebook_ui/screens/tap_view/nav_bar.dart';
import 'package:facebook_ui/screens/tap_view/notification_screen.dart';
import 'package:facebook_ui/screens/tap_view/personal_profile_screen.dart';
import 'package:facebook_ui/screens/tap_view/watch_video_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash = '/';

  static const String intro = '/intro';

  static const String joinFB = '/join_fb';

  static const String selectName = '/select_name';

  static const String selectBirthday = '/select_bỉthday';

  static const String selectGender = '/select_gender';

  static const String selectNumber = '/select_number';

  static const String selectPass = '/select_pass';

  static const String termAndPrivacy = '/term_and_privacy';

  static const String login = '/login';

  static const String forgotPass = '/forgot_pass';

  static const String otp = '/otp';

  static const String newPass = '/new_pass';

  static const String home = '/home';
  
  static const String friend = '/friend';

  static const String personal = '/personal';

  static const String watchVideo = '/watch_video';

  static const String notification = '/notification';

  static const String menu = '/menu';

  static const String mess = '/mess';

  static const String newMess = '/new_mess';

  static const String messInfo = '/mess_info';
  
  static const String messChat = '/mess_chat';

  static const String forgotPassEmail = '/fogot_pass_email';

  static const String navBar = '/nav_bar';

  static Map<String, WidgetBuilder> routes = {
    navBar : (context) => NavBar(),
    forgotPassEmail : (context) => ForgotPasswordEmailScreen(),
    splash : (context) => SplashScreen(),
    intro : (context) => ProfilLoginScreen(),
    joinFB :(context) => JoinFacbookScreen(),
    selectName : (context) => SelectNameScreen(),
    selectBirthday : (context) => SelectBirthdayScreen(),
    selectGender : (context) => SelectGender(),
    selectNumber : (context) => SelectNumberScreen(),
    selectPass : (context) => SelectPasswordScreen(),
    termAndPrivacy : (context) => TermAndPrivacyScreen(),
    login : (context) => LoginScreen(),
    forgotPass : (context) => ForgotPasswordScreen(),
    otp : (context) => OTPScreen(),
    newPass : (context) => NewPasswordScreen(),
    home : (context) => HomeScreen(),
    friend : (context) => FriendRequestScreen(),
    personal : (context) => PersonalProfileScreen(),
    watchVideo : (context) => WatchVideoScreen(),
    notification : (context) => NotificationScreen(),
    menu : (context) => MenuScreen(),
    mess : (context) => MessageScreen(),
    newMess : (context) => NewMessageScreen(),
    messInfo : (context) => MessageInfoScreen(),
    messChat : (context) => MessageChatScreen(),
  };

}
