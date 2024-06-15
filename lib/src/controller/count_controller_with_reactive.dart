import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';

enum NUM { FIRST, SECOND }

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  final RxDouble _double = 0.0.obs;
  RxString value = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: "유준", age: 28).obs;
  RxList<dynamic> list = [].obs;

  void increase() {
    count++;
    _double.value++;
    _double(424);

    nums(NUM.SECOND);
    user(User());
    user.update((user) {
      user?.name = "유준";
    });

    // list.addAll();
    // list.add();
    list.addIf(user.value.name == "유준", "okay");
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (callback) => print('매번 호출'));
    once(count, (callback) => print('한번만 호출'));
    debounce(count, (callback) => print('마지막 변경에 한번만 호출'),
        time: const Duration(
          seconds: 1,
        ));
    interval(count, (callback) => print("변경되고 있는 동안 1초마다 호출"),
        time: const Duration(
          seconds: 1,
        ));
    super.onInit();
  }
}
