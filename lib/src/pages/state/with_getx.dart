import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getx_flutter/src/controller/count_controller_with_getx.dart';

class WithGetx extends StatelessWidget {
  WithGetx({super.key});
  final CountControllerWithGetx _controllerWithGetx =
      Get.put(CountControllerWithGetx());

  Widget _button(String id) {
    return ElevatedButton(
      onPressed: () {
        _controllerWithGetx.increase();
      },
      child: const Text(
        "+",
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Getx',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          GetBuilder<CountControllerWithGetx>(
            id: 'first',
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: const TextStyle(
                  fontSize: 30,
                ),
              );
            },
          ),
          GetBuilder<CountControllerWithGetx>(
            id: 'second',
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: const TextStyle(
                  fontSize: 30,
                ),
              );
            },
          ),
          _button("first"),
          _button("second"),
        ],
      ),
    );
  }
}
