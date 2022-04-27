import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:portofolio/utils/app_color.dart';

import 'di/locator.dart';
import 'domain/router.gr.dart';

Future<void> main() async {
  var widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portofolio',
      theme: buildThemeData(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(
        initialRoutes: [HomeViewRoute()],
      ),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColor.scaffoldBackground,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: AppColor.primary,
        fontFamily: 'Alilato',
        // iconTheme: IconThemeData(color: AppColor.defaultIconColor),
        // textTheme: TextTheme(
        //   headline6: TextStyle(color: AppColor.defaultTextColor, fontSize: 18),
        // ),
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColor.primaryDark,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark),
          color: AppColor.primaryDark,
          // elevation: 0,
          // iconTheme: IconThemeData(color: AppColor.primary),
          // actionsIconTheme: IconThemeData(color: AppColor.primary),
          // titleTextStyle: TextStyle(
          //     color: AppColor.primary,
          //     fontSize: 20,
          //     fontWeight: FontWeight.w600),
        ),
        dividerTheme: const DividerThemeData(space: 0));
  }
}
