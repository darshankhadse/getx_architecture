import 'package:get/get.dart';
import 'package:getx_architecture/data/repository/home_repository.dart';

import '../../../../data/models/home/response_model.dart';

class HomeController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  Rx<ResponseModel?> user = Rx<ResponseModel?>(null);
  @override
  void onInit() {
    print('On Init');
    example();
    super.onInit();
  }

  @override
  void onReady() {
    print('On Ready');
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void example() async {
    ResponseModel? response = await _userRepository.fetchUsers();
    if (response != null) {
      user.value = response;
      print('User name: ${response.data}');
    } else {
      print('Failed to load data');
    }
  }
}
