import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/controller/count_controller_with_getx.dart';

class BindingPage extends GetView<CountControllerWithGetx> {
  const BindingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                controller.count.toString(),
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.increase();
              },
              child: const Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
