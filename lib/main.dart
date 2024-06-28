import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ssk/modules/splash/splash_screen.dart';
import 'package:ssk/routes/route_constants.dart';
import 'package:ssk/themes/app_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  String supaBaseKey = await rootBundle.loadString('assets/supa_base_key.json');
  Map<String, dynamic> supaBaseKeysData = json.decode(supaBaseKey);
  await Supabase.initialize(
    url: supaBaseKeysData['apiUrl'],
    anonKey: supaBaseKeysData['apiKey'],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          themeMode: ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.getAppTheme(
            context,
          ),
          home: const SplashScreen(),
          initialRoute: Routes.splashScreen,
        ),
      ),
    );
  }
}
