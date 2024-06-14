import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/pages/dongjun.dart';
import 'package:getx_flutter/src/pages/normal/first.dart';
import 'package:getx_flutter/src/pages/named/first.dart';
import 'package:getx_flutter/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          '라우트 관리 홈',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const FirstPage(),
                //     ));
                Get.to(const FirstPage());
              },
              child: const Text('일반적인 라우트'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/first');
                Get.toNamed("/first");
              },
              child: const Text('Named 라우트'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/next",
                    arguments: User(
                      name: '유준',
                      age: 28,
                    ));
              },
              child: const Text('Arguments 전달'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  "/user/28357?name=유준&age=28",
                );
              },
              child: const Text('동적 url'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const SimpleStateManagePage());
              },
              child: const Text('단순상태관리'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const Dongjun());
              },
              child: const Text('동준'),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User({
    required this.name,
    required this.age,
  });
}
