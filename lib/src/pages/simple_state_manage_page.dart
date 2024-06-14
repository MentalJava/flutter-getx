import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/src/controller/count_controller_with_getx.dart';
import 'package:getx_flutter/src/controller/count_controller_with_provider.dart';
import 'package:getx_flutter/src/pages/state/with_getx.dart';
import 'package:getx_flutter/src/pages/state/with_provider.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          '단순상태관리',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: WithGetx(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (context) => CountControllerWithProvider(),
                child: const WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
