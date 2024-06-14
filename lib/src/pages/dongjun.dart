import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dongjun extends StatelessWidget {
  const Dongjun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Next Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(""), //as 는 형변환
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('뒤로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.dialog(
                  AlertDialog(
                    title: const Text('동준이는 바보일까요?'),
                    content: const Text('정답을 알려주세요 !'),
                    actions: [
                      TextButton(
                        onPressed: Get.back,
                        child: const Text('네!'),
                      ),
                      TextButton(
                        onPressed: Get.back,
                        child: const Text('네!!!'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text(''),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "동준",
                  "안녕",
                );
              },
              child: const Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
