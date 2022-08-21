import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uinft/page/landing_view.dart';
import 'package:uinft/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingView(),
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          bottomAppBarTheme:
              BottomAppBarTheme(color: Colors.white.withOpacity(0.3)),
          iconTheme: const IconThemeData(color: AppColors.white),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            sizeConstraints: BoxConstraints(
              minHeight: 80,
              minWidth: 80,
            ),
            backgroundColor: AppColors.primaryColor,
          ),
          textTheme: TextTheme(
              headline4: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.chakraPetch().fontFamily),
              headline2: const TextStyle(
                color: AppColors.white,
              )),
          scaffoldBackgroundColor: AppColors.scaffoldBackground,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: AppColors.primaryColor,
                  minimumSize: const Size(50, 55)))),
    );
  }
}
