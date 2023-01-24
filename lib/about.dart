import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.shade900,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40.0,left: 20.0),
                    child: BackButton(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 90.0,left: 50.0),
                child: Row(
                  children: [
                    Icon(Icons.info_outline,color: Colors.white,),
                    Text('  About Us',style: TextStyle(fontSize: 35,color: Colors.white),)
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50.0,left: 50.0),
                    child: Text('Founder : ',style: TextStyle(color: Colors.white,fontSize: 25),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50.0,left: 5.0),
                    child: Text('Jay Goyani',style: TextStyle(color: Colors.blueAccent,fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40.0,left: 30.0),
                    child: Text('''    This is our first app. We are
    try to make batter user
    experience. We apologize for
    any inconvenience.
    
    
    Thanks for support us.''',style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 50.0,top: 50.0),
                    child: Text('Special Thanks To:',style: TextStyle(fontSize: 22,color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 90.0,top: 30.0),
                          child: Container(
                            height: 70,
                            width: 70,
                            child: CircleAvatar(
                                backgroundImage: AssetImage('ast/img/ftr.png'),
                                backgroundColor: Colors.black12
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25.0,top: 30.0),
                          child: Container(
                            height: 70,
                            width: 70,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('ast/img/figma.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }

}