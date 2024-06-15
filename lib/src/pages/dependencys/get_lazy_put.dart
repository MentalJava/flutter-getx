import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/controller/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetLazyput"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.find<DependencyController>().increase();
          },
          child: const Text(""),
        ),
      ),
    );
  }
}
