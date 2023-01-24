import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/login.dart';
import 'package:spice_box/nav.dart';
import 'package:intl/intl.dart';


class signin extends StatefulWidget{
  @override
  State<signin> createState() => _signinState();
}
class _signinState extends State<signin> {
  bool pass= true;
  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: EdgeInsets.only(left: 145.0,top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          child: Text('Sign In',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 150.0),
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
                        margin: EdgeInsets.only(top: 40.0,bottom: 10.0),
                        width: 280,
                        height: 55,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Colors.orange,
                                width: 2,
                              ),
                            ),
                            labelText: ('Name'),
                            labelStyle: TextStyle(fontSize: 17,color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.person,color: Colors.white),
                              onPressed: (){

                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
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
                        margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                        width: 280,
                        height: 55,
                        child: TextField(
                          obscureText: pass,
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
                      Padding(
                          padding: const EdgeInsets.only(left: 40.0,right: 50.0),
                        child: TextField(
                          controller: _date,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            icon: Icon(CupertinoIcons.calendar_badge_plus,color: Colors.white,size: 25,),
                            labelText: 'Select D.O.B',
                            labelStyle: TextStyle(color: Colors.white,fontSize: 18),
                          ),
                          onTap: () async {
                            DateTime? pickeddate = await showDatePicker(context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1990),
                                lastDate: DateTime.now()
                            );
                            if(pickeddate != null){
                              setState(() {
                                _date.text = DateFormat('dd-MM-yyyy').format(pickeddate);
                              });
                            }
                          },
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 150.0),
                        child: Row(
                          children: [
                            Text('Aiready a uesr?',style: TextStyle(color: Colors.white,fontSize: 15),),
                            TextButton(
                              child: Text('Log in.',style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.bold),),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => login())));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 60.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(height: 50,width: 150),
                      child: OutlinedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                        },
                        child: Text('Sign In',style: TextStyle(fontSize: 27,color: Colors.white,fontWeight: FontWeight.bold),),
                        style: OutlinedButton.styleFrom(primary: Color(0x00FFFFFF),side: BorderSide(width: 2.0,color: Colors.white,)),
                      ),
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}