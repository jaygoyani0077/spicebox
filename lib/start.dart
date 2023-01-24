import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';
class start extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('ast/img/5.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 90.0),
                  child: Column(
                    children: [
                      Image.asset('ast/img/2.png',height: 100,width: 100),
                      Text('SpiceBox',style: TextStyle(color: Color(0xFFB2EBF2),fontSize: 22,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text('" Loves your Hunger... "',style: TextStyle(fontSize: 25,color: Color(0XFFF8BBD0),fontWeight: FontWeight.bold),),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 100.0),
                      child: Column(
                        children: [
                          Container(
                            child: Text('Welcome',style: TextStyle(fontSize: 50,color: Colors.white)) ,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 50.0,top: 10.0),
                            child: Text('''to the spice box family. 
We are glad that you are here.
We will do our best to notify
you about new items.
Stay tuned.....''',style: TextStyle(fontSize: 20,color: Colors.white70)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 100.0,left: 200.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 47,width: 130),
                        child: OutlinedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                          },
                          child: Text('Start',style: TextStyle(fontSize: 27,color: Colors.white,fontWeight: FontWeight.bold),),
                          style: OutlinedButton.styleFrom(primary: Color(0x00FFFFFF),side: BorderSide(width: 2.0,color: Colors.white,)),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 110.0,top: 35.0),
                      child: Text('Made in INDIA with ♥',style: TextStyle(fontSize: 15,color: Colors.orange,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}