// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_constructors, must_call_super

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_healthy_app/views/healthy_signin_ui.dart';

class HealthySplashScreenUI extends StatefulWidget {
  const HealthySplashScreenUI({super.key});

  @override
  State<HealthySplashScreenUI> createState() => _HealthySplashScreenUIState();
}

class _HealthySplashScreenUIState extends State<HealthySplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HealthySigninUI()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              'บันทึกสุขภาพ',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              'Created by : 6452410004\nAunop Chinnapong',
              textAlign: TextAlign.center,
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
