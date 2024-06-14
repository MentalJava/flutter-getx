import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/home.dart';
import 'package:getx_flutter/src/pages/next.dart';
import 'package:getx_flutter/src/pages/named/first.dart';
import 'package:getx_flutter/src/pages/named/second.dart';
import 'package:getx_flutter/src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      // routes: {
      //   "/": (context) => const Home(),
      //   "/first": (context) => const FirstNamedPage(),
      //   "/second": (context) => const SecondNamedPage(),
      // },
      getPages: [
        GetPage(
          name: "/",
          page: () => const Home(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: "/first",
          page: () => const FirstNamedPage(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: "/second",
          page: () => const SecondNamedPage(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: "/next",
          page: () => const NextPage(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: "/user/:uid",
          page: () => const UserPage(),
          transition: Transition.fadeIn,
        ),
      ],
    );
  }
}
