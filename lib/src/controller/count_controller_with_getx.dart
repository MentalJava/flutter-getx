import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class CountControllerWithGetx extends GetxController {
  static CountControllerWithGetx get to => Get.find();

  RxInt count = 0.obs;

  void increase() {
    count++;
  }
}
