import 'package:assignment/routing/app_router.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BeamerProvider(
        routerDelegate: AppRouter.routerDelegate,
        child: MaterialApp.router(
          routerDelegate: AppRouter.routerDelegate,
          backButtonDispatcher: AppRouter.backButtonDispatcher,
          routeInformationParser: AppRouter.routerParser,
          title: 'Tutor Bin',

          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // routes: RouteGenerator.buildRoutes,
          // initialRoute: RouteGenerator.initialRoute,
        ),
      ),
    );
  }
}
