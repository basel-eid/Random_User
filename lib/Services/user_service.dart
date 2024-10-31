import 'package:dio/dio.dart';
import 'package:random_user/Models/user_model.dart';

class UserService{
  static final dio = Dio();
  static Future<UserModel> fetchUsers()async{
    try{
      const url = "https://randomuser.me/api/?results=5";
      Response response = await dio.get(url);
      return UserModel.fromjson(response.data);
    }
    catch(e){
      throw Exception("Error add users");
    }
  }
}