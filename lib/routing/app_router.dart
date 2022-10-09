import 'package:flutter/material.dart';

import 'package:beamer/beamer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'locations/get_started.dart';




/// [WidgetRoute]
/// Class used to define the [route], [widget] and [title].
class WidgetRoute {
  final String route;
  final Widget widget;
  final String title;

  WidgetRoute({
    required this.route,
    required this.widget,
    required this.title,
  });
}

/// [AppRouter] which contains common routing configuration needed for the application.
/// This includes all pages and all routes mapped to each other.
/// Use [AppRouter] in MaterialApp:
///  ```dart
///  MaterialApp.router(
///    title: 'Tutor Bin',
///    routerDelegate: AppRouter.routerDelegate,
///    routeInformationParser: AppRouter.routerParser,
///    backButtonDispatcher: AppRouter.backButtonDispatcher,
///  );
///  ```
///
abstract class AppRouter {


  static const splash = '/';
  static const homeScreen = '/homeScreen';




  static final backButtonDispatcher = BeamerBackButtonDispatcher(
    delegate: routerDelegate,
  );

  static final routerDelegate = BeamerDelegate(

    // notFoundRedirectNamed: DashboardRouter.homeRoute,
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        GetStartedLocation(),

      ],
    ),
    guards: [

    ],
  );

  /// A delegate to parse the route information
  static final routerParser = BeamerParser();


}
