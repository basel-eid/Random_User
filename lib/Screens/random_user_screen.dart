import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user/Providers/user_provider.dart';
import 'package:random_user/Widgets/user_custom_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider providerObject = UserProvider.getObject(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Random User App"),
        centerTitle: true,
      ),
      body: Consumer<UserProvider>(builder: (context, value, child) {
          final res = value.userModel?.result;
          if(res == null){
              value.fetchUsers();
              return const Center(
                  child:CircularProgressIndicator() ,
              );
          }
          else {
              return ListView.separated(itemCount: 5,
              itemBuilder: (context, index) {
                final user = res[index];
                return UserCustomWidget(Email: user["email"], Name: user["name"], Image: user["image"],city: user["city"],phone: user["phone"],);

              }, separatorBuilder: (context,index)=> SizedBox(height: 30,),

                );
          }
      },

      ),
        floatingActionButton: FloatingActionButton(onPressed: () {
        providerObject.fetchUsers();
    },child: Icon(Icons.refresh),),
    );
  }
}
