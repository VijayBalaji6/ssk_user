import 'package:supabase_flutter/supabase_flutter.dart';

class AuthServices {
  static final supabase = Supabase.instance.client;

  static Future<bool> checkAuth() async {
    final Session? session = supabase.auth.currentSession;

    if (session != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> confirmOtp(String token, String phone) async {
    try {
      await supabase.auth.verifyOTP(
        type: OtpType.sms,
        token: token,
        phone: phone,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> getPhoneOtp(String phone) async {
    try {
      await supabase.auth.signInWithOtp(
        phone: phone,
        shouldCreateUser: false,
      );
    } catch (e) {
      rethrow;
    }
  }
}
