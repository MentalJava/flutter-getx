import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/pages/named/second.dart';
import 'package:getx_flutter/src/pages/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'First Named Page',
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
                Get.toNamed('/second');
              },
              child: const Text('다음페이지로'),
            ),
          ],
        ),
      ),
    );
  }
}
