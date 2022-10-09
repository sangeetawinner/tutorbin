import 'package:flutter/material.dart';

import 'package:beamer/beamer.dart';

import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/splash_screen.dart';
import '../app_router.dart';

/// [GetStartedLocation]

class GetStartedLocation extends BeamLocation<BeamState> {
  String get splash => AppRouter.splash;
  String get homeScreen => AppRouter.homeScreen;





  @override
  List<String> get pathPatterns => [
    splash,

    homeScreen,


  ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
    if (state.uri.toString() == splash)
      BeamPage(
        key: ValueKey(splash),
        title: 'splash',
        child:  SplashScreen(),
        fullScreenDialog: true,
      ),
    if (state.uri.toString() == homeScreen)
      BeamPage(
        key: ValueKey(homeScreen),
        title: 'homeScreen',
        child:  HomeScreen(),
        fullScreenDialog: true,
      ),




  ];
}
