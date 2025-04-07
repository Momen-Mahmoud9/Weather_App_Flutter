import 'package:flutter/widgets.dart';
import 'package:untitled/Servcies/regestration_service.dart';
import 'package:untitled/Models/user_model.dart';

class RegisterProvider extends ChangeNotifier {
  UserData? userModel;

  Future<void> registerUser({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {

    userModel = await RegisterService.registerService(
      name: name,
      email: email,
      phone: phone,
      password: password,
    );
    notifyListeners();
  }

  Future<void> logUser({
    required String email,
    required String password,
  }) async {

    userModel = await RegisterService.logService(
      email: email,
      password: password,
    );
notifyListeners();
  }
}
