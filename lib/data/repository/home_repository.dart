import 'package:getx_architecture/services/network_service.dart';

import '../models/home/response_model.dart';

class UserRepository {
  Future<ResponseModel?> fetchUsers() async {
    final response = await NetworkService().get('https://reqres.in/api/users?page=2');
    if (response != null) {
      return responseModelFromJson(response);
    } else {
      return null;
    }
  }
}
