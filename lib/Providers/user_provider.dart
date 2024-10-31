import 'package:flutter/material.dart';
import 'package:random_user/Models/user_model.dart';
import 'package:provider/provider.dart';
import 'package:random_user/Services/user_service.dart';

class UserProvider extends ChangeNotifier{
  UserModel? userModel;
  static UserProvider getObject(context)=>Provider.of<UserProvider>(context , listen: false);
  Future<void> fetchUsers()async {
    userModel = await UserService.fetchUsers();
    notifyListeners();
  }
}