import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/controller/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getput"),
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
