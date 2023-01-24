import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favorite extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade500,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('ast/img/like.png'),
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text('No Favorite Items Found!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
              )
            ],
          ),
        ),
      ),
    );
  }

}