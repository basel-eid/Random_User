import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserCustomWidget extends StatelessWidget {
  String Image , Name , Email,city,phone;
  UserCustomWidget({super.key, required this.Email,required this.Name,required this.Image,required this.city,required this.phone});
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(Image),
          ),
          SizedBox(width: 20,),
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text(Email,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
            Text(city,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
            Text(phone,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
          ],
      )
        ],
      ),
    );
    const SizedBox(height: 10,);
  }
}
