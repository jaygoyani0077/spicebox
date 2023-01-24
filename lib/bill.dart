import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/pay.dart';

class bill extends StatefulWidget{
  @override
  State<bill> createState() => _billState();
}
class _billState extends State<bill> {
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
                    height: 580,
                    width: 340,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.grey.shade900,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 20.0),
                              child: Text('Summary',style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 10.0),
                              child: TextButton(
                                onPressed: (){},
                                child: Text('Edit',style: TextStyle(fontSize: 18,color: Colors.lightBlue,letterSpacing: 1),),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top:20.0),
                              child: Text('Shipping details',style: TextStyle(fontSize: 12,color: Colors.grey),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 5.0),
                              height: 1.5,
                              width: 300,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:25.0),
                              height: 50,
                              child: Text('Address: ',style: TextStyle(fontSize: 12,color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 45.0,top: 20.0),
                              child: Text('''A-25/26 Ramdevpir soc.
near laxmi hotel,
hirabag,
surat     
395006''',style: TextStyle(fontSize: 12,color: Colors.white),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:25.0,top:10.0),
                              //height: 50,
                              child: Text('E-mail: ',style: TextStyle(fontSize: 12,color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 55.0,top: 10.0),
                              child: Text('jaygoyani1902@gmail.com',style: TextStyle(fontSize: 12,color: Colors.white),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:25.0,top:10.0),
                              //height: 50,
                              child: Text('Mobile no.: ',style: TextStyle(fontSize: 12,color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30.0,top: 10.0),
                              child: Text('9714223929',style: TextStyle(fontSize: 12,color: Colors.white),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 40.0),
                              child: Text('Your order',style: TextStyle(fontSize: 12,color: Colors.grey),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 5.0),
                              height: 1.5,
                              width: 300,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Container(
                          height: 100,
                          width: 300,
                          margin: EdgeInsets.only(left:1.0,right:20.0,bottom:20.0,top:5.0),
                          //color: Colors.blue,
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.only(left: 10.0,top: 10.0,bottom: 10.0,right: 10.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('ast/img/p1.png'),
                                  ),
                                ),
                              ),
                              Container(
                                //color: Colors.red,
                                height: 80,
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text('Name: Margherita Pizza',style: TextStyle(fontSize: 15,color: Colors.white),),
                                    ),
                                    Container(
                                      width: 160,
                                      margin: EdgeInsets.only(top:10.0),
                                      child: Text('Quantity: 1',style: TextStyle(fontSize: 15,color: Colors.white),),
                                    ),
                                    Container(
                                      width: 160,
                                      margin: EdgeInsets.only(top:10.0),
                                      child: Text('Cost: 500',style: TextStyle(fontSize: 15,color: Colors.white),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 10.0),
                              child: Text('Total price',style: TextStyle(fontSize: 12,color: Colors.grey),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 5.0),
                              height: 1.5,
                              width: 300,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 20.0),
                              child: Text('Sub Total:',style: TextStyle(fontSize: 15,color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30.0,top: 20.0),
                              child: Text('₹500',style: TextStyle(fontSize: 15,color: Colors.white),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 10.0),
                              child: Text('Delivery Charges:',style: TextStyle(fontSize: 15,color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30.0,top: 10.0),
                              child: Text('₹50',style: TextStyle(fontSize: 15,color: Colors.white),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 10.0),
                              child: Text('Total Purchase Price:',style: TextStyle(fontSize: 15,color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30.0,top: 10.0),
                              child: Text('₹550',style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 300,
                      margin: EdgeInsets.only(top:20.0,bottom: 20.0,left: 30.0,right:30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.orange,
                      ),

                      child: OutlinedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>pay()));
                        },
                        child: Text('Pay ₹550',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),),
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}