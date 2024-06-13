import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/home.dart';
import 'package:getx_flutter/src/pages/normal/second.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'User Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['uid']}"),
            Text("${Get.parameters['name']}님 안녕하세요"),
            Text("${Get.parameters['age']}"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('뒤로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
