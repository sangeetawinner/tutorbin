import 'dart:async';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/images.dart';
import '../../routing/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    FlutterNativeSplash.remove();
    Timer(Duration(seconds: 3),
            ()=> Beamer.of(context).beamToNamed(AppRouter.homeScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Text('Tutor Bin'),
      // body: AnnotatedRegion<SystemUiOverlayStyle>(
      //   value: SystemUiOverlayStyle.light,
      //   child: Stack(
      //     children: [
      //       Center(
      //         child: Center(
      //           child: SvgPicture.asset(
      //            Images.logoIcon,
      //             width: MediaQuery.of(context).size.width / 2,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
