import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:resources_wallet/screens/resources_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
        title: 'Resources Wallet',
        material: (_, __) => MaterialAppData(
                theme: ThemeData(
              primaryColor: const Color(0xff2aa352),
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                  backgroundColor: Color(0xff2eb65b)),
              textTheme: GoogleFonts.interTextTheme().copyWith(
                headline1: GoogleFonts.inter(textStyle: const TextStyle(color:Colors.black, fontWeight: FontWeight.w700, fontSize: 72)),
                headline2: GoogleFonts.inter(textStyle: const TextStyle(color:Colors.black, fontWeight: FontWeight.w700, fontSize: 48)),
                headline3: GoogleFonts.inter(textStyle: const TextStyle(color:Colors.black, fontWeight: FontWeight.w700, fontSize: 36)),
                headline4: GoogleFonts.inter(textStyle: const TextStyle(color: Color(0xffaaaaaa), fontWeight: FontWeight.w700,fontSize: 24)),
                headline5: GoogleFonts.inter(textStyle: const TextStyle(color: Color(0xffaaaaaa), fontWeight: FontWeight.w400, fontSize: 18,)),
                headline6: GoogleFonts.inter(textStyle: const TextStyle(color:Colors.black, fontWeight: FontWeight.w700, fontSize: 15)),
              ),
            )),
        cupertino: (_,__)=>CupertinoAppData(theme: const CupertinoThemeData(textTheme: CupertinoTextThemeData())),
        home: const ResourcesScreen());
  }
}
