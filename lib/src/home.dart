import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/pages/normal/first.dart';
import 'package:getx_flutter/src/pages/normal/named/first.dart';

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
