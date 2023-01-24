import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:url_launcher/url_launcher.dart';
import "package:flutter/services.dart";
import 'nav.dart';

class pay extends StatefulWidget{
  @override
  State<pay> createState() => _payState();
}
class _payState extends State<pay> {
  final Uri _url = Uri.parse('upi://pay?pa=jaygoyani1902@okicici&pn=Jay Goyani&aid=uGICAgMDQ5__uFA');
  int _value = 1;
  int m=1;
  int n=2;
  int o=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0,top: 40.0),
                    child: BackButton(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0,top: 35.0),
                    child: Text('payment',style: TextStyle(fontSize: 25.0,color: Colors.white,),),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.0,top: 35.0,bottom: 15.0),
                    child: Text('Choose Payment Method:',style: TextStyle(fontSize: 20.0,color: Colors.white,),),
                  )
                ],
              ),
              Row(
                children:[
                  SizedBox(width: 10.0,),
                  Radio(
                      value: m,
                      groupValue: _value,

                      fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                      onChanged: (value){
                        setState(() {
                          _value = m;
                        });
                      }
                  ),
                  Text("Credit Card",style: TextStyle(fontSize: 25,color: Colors.white,))
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 330,
                    margin: EdgeInsets.only(bottom:0.0,left:15.0,right:15.0),
                    child: FlipCard(
                      front: Image.asset('ast/img/ccf.png'),
                      back: Image.asset('ast/img/ccb.png'),
                      direction: FlipDirection.HORIZONTAL,
                      speed: 1000,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 220.0),
                    child: Text('Tap On Card To Flip',style: TextStyle(color: Colors.grey,fontSize: 13),),
                  )
                ],
              ),
              Row(
                children:[
                  SizedBox(width: 10.0,),
                  Radio(
                      value: n,
                      groupValue: _value,
                      fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                      onChanged: (value){
                        setState(() {
                          _value = n;
                        });
                      }
                  ),
                  Text("Google Pay",style: TextStyle(fontSize: 25,color: Colors.white,))
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.0,right: 25.0,bottom: 20.0),
                    height: 70,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Colors.grey.shade800,
                    ),
                    child: Row(
                        children:[
                          Container(
                            margin: EdgeInsets.only(left:20.0),
                            height:40,
                            width:40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('ast/img/gpay.png'),
                                )
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left:20.0),
                              child: TextButton(
                                  onPressed:(){
                                    print(canLaunchUrl(_url));
                                  },
                                  child: Text('Pay Using Google Pay',style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold))
                              )
                          )
                        ]
                    ),
                  )
                ],
              ),
              Row(
                children:[
                  SizedBox(width: 10.0,),
                  Radio(
                      value: o,
                      groupValue: _value,
                      fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                      onChanged: (value){
                        setState(() {
                          _value = o;
                        });
                      }
                  ),
                  Text("Cash On Delivery",style: TextStyle(fontSize: 25,color: Colors.white,))
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left:30.0,right:30.0,bottom:30.0,top:100.0),
                    height: 65,
                    child: SliderButton(
                      backgroundColor: Colors.blueGrey.shade300,
                      buttonColor: Colors.black26,
                      buttonSize: 55,
                      width: 300,
                      baseColor: Colors.black,
                      highlightedColor: Colors.blueGrey,
                      radius: 45.0,
                      icon: Icon(Icons.arrow_forward_ios,color: Colors.green.shade300),
                      action: (){
                        HapticFeedback.heavyImpact();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                      },
                      label: Text('Swipe To Pay ₹550   ',style: TextStyle(color: Colors.white,fontSize:23,fontWeight: FontWeight.bold) ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}