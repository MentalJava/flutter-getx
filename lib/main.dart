import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/controller/count_controller_with_getx.dart';
import 'package:getx_flutter/src/home.dart';
import 'package:getx_flutter/src/pages/binding.dart';
import 'package:getx_flutter/src/pages/next.dart';
import 'package:getx_flutter/src/pages/named/first.dart';
import 'package:getx_flutter/src/pages/named/second.dart';
import 'package:getx_flutter/src/pages/user.dart';

void main() {
  // initService();
  runApp(const MyApp());
}

// void initService() {
//   Get.put(CountControllerWithGetx(), permanent: true);
// } // GetService 처럼 메모리에서 항상 유지 시킬 수 있음.

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
        GetPage(
            name: "/binding",
            page: () => const BindingPage(),
            transition: Transition.fadeIn,
            binding: BindingsBuilder(() {
              Get.put(CountControllerWithGetx());
            })),
      ],
    );
  }
}
