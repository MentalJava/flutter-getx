import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Second Named Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Get.back();
              },
              child: const Text('뒤로 가기'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const Home(),
                //     ),
                //     (route) => false);
                Get.offAllNamed("/");
              },
              child: const Text('홈으로'),
            ),
          ],
        ),
      ),
    );
  }
}
