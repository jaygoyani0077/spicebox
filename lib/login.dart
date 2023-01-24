import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/signin.dart';

import 'nav.dart';
class login extends StatefulWidget{
  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {
  bool pass= true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('ast/img/e.jpeg',),fit: BoxFit.cover
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 80.0,left: 130.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        child: Image.asset('ast/img/2.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 70.0,top: 10.0),
                  child: Row(
                    children: [
                      Container(
                        child: Text('Log In',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 0.0),
                      child: Container(
                        height: 10.0,
                        width: 210.0,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 80.0,bottom: 15.0),
                      width: 280,
                      height: 55,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(
                              color: Colors.orange,
                              width: 2,
                            ),
                          ),
                          labelText: ('E-mail'),
                          labelStyle: TextStyle(fontSize: 17,color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.email,color: Colors.white),
                            onPressed: (){

                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0,bottom: 15.0),
                      width: 280,
                      height: 55,
                      child: TextField(
                        obscureText: pass,
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: ('Password'),
                            labelStyle: TextStyle(fontSize: 17,color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Colors.orange,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye_outlined,color: Colors.white),
                              onPressed: (){
                                setState(() {
                                  pass=!pass;
                                });
                              },
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 120.0),
                      child: Row(
                        children: [
                          Text('Are you a new uesr?',style: TextStyle(color: Colors.white,fontSize: 15),),
                          TextButton(
                            child: Text('Sign in.',style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.bold),),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => signin())));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 120.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(height: 50,width: 150),
                    child: OutlinedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                      },
                      child: Text('Log In',style: TextStyle(fontSize: 27,color: Colors.white,fontWeight: FontWeight.bold),),
                      style: OutlinedButton.styleFrom(primary: Color(0x00FFFFFF),side: BorderSide(width: 2.0,color: Colors.white,)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}