class UserModel{
List<dynamic> result;
UserModel({required this.result});
factory UserModel.fromjson(Map<String,dynamic> json){
  List<dynamic> fullData ;

  fullData = json["results"].map(
      (user){
        return {
          "name":user["name"]["first"]+" "+user["name"]["last"],
          "email":user["email"],
          "image":user["picture"]["thumbnail"],
          "city":user["location"]["city"],
          "phone":user["phone"]
        };
      },
  ).toList();
  return UserModel(result: fullData);
}
}