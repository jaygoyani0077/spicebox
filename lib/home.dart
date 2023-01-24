import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/panipuri.dart';
import 'package:spice_box/pizza.dart';
import 'package:spice_box/sandwich.dart';

import 'burger.dart';
import 'colddrink.dart';
import 'momos.dart';
import 'offer.dart';

class home extends StatelessWidget{

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
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.black,
                child:  Container(
                  margin: EdgeInsets.all(10.0),
                  child: Center(
                    child: Carousel(
                        dotSize: 5.0,
                        dotSpacing: 15.0,
                        dotBgColor: Color.fromRGBO(10, 250, 150, 0),
                        onImageTap: (p0) {
                          Navigator.push(context,MaterialPageRoute(builder:(context) => offer()));
                        },
                        //dotPosition: DotPosition.bottomCenter,
                        images: [

                          Image.asset('ast/img/offer.png'),
                          Image.asset('ast/img/offer4.png'),
                          Image.asset('ast/img/offer5.png'),
                          Image.asset('ast/img/offer6.png'),
                        ]
                    ),
                  ),
                ),
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>pizza()));
              },
                  child:  Container(
                      margin: EdgeInsets.only(top: 10.0),
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.grey.shade900,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                image: DecorationImage(
                                  image: AssetImage('ast/img/pizzahome.jpg'),
                                )
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      child: Text('Pizza',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text('Starting at ' ,style: TextStyle(color: Colors.white,fontSize: 22),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text('₹250' ,style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 50.0),
                                      child: Icon(Icons.favorite,color: Colors.pink,size: 22,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      child: Text(' 96%' ,style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Icon(Icons.circle_rounded,color: Colors.greenAccent,size: 18,)
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0),
                                      child: Text(' Available' ,style: TextStyle(color: Colors.greenAccent,fontSize: 16),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  )
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>burger()));
              },
                  child:  Container(
                      height: 350,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.grey.shade900,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                image: DecorationImage(
                                    image: AssetImage('ast/img/burgerhome.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      child: Text('Burger',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text('Starting at ' ,style: TextStyle(color: Colors.white,fontSize: 22),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text('₹50' ,style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 50.0),
                                      child: Icon(Icons.favorite,color: Colors.pink,size: 22,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      child: Text(' 90%' ,style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Icon(Icons.circle_rounded,color: Colors.greenAccent,size: 18,)
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0),
                                      child: Text(' Available' ,style: TextStyle(color: Colors.greenAccent,fontSize: 16),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  )
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sandwich()));
              },
                  child:  Container(
                      height: 350,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.grey.shade900,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                image: DecorationImage(
                                    image: AssetImage('ast/img/sandwichhome.jpeg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      child: Text('Sandwich',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text('Starting at ' ,style: TextStyle(color: Colors.white,fontSize: 22),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text('₹50' ,style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 50.0),
                                      child: Icon(Icons.favorite,color: Colors.pink,size: 22,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      child: Text(' 82%' ,style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Icon(Icons.circle_rounded,color: Colors.greenAccent,size: 18,)
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0),
                                      child: Text(' Available' ,style: TextStyle(color: Colors.greenAccent,fontSize: 16),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  )
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>momos()));
              },
                  child:  Container(
                      height: 350,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.grey.shade900,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                image: DecorationImage(
                                    image: AssetImage('ast/img/momoshome.jpeg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      child: Text('Momos',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text('Starting at ' ,style: TextStyle(color: Colors.white,fontSize: 22),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text('₹70' ,style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 50.0),
                                      child: Icon(Icons.favorite,color: Colors.pink,size: 22,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      child: Text(' 81%' ,style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Icon(Icons.circle_rounded,color: Colors.greenAccent,size: 18,)
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0),
                                      child: Text(' Available' ,style: TextStyle(color: Colors.greenAccent,fontSize: 16),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  )
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>panipuri()));
              },
                  child:  Container(
                      height: 350,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.grey.shade900,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                image: DecorationImage(
                                    image: AssetImage('ast/img/panipurihome.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      child: Text('Pani-Puri',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text('Starting at ' ,style: TextStyle(color: Colors.white,fontSize: 22),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text('₹60' ,style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 50.0),
                                      child: Icon(Icons.favorite,color: Colors.pink,size: 22,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      child: Text(' 95%' ,style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Icon(Icons.circle_rounded,color: Colors.greenAccent,size: 18,)
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0),
                                      child: Text(' Available' ,style: TextStyle(color: Colors.greenAccent,fontSize: 16),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  )
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>colddrink()));
              },
                  child:  Container(
                      height: 350,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30.0,bottom: 30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.grey.shade900,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                image: DecorationImage(
                                    image: AssetImage('ast/img/colddrinkhome.jpeg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      child: Text('Cold drink',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text('Starting at ' ,style: TextStyle(color: Colors.white,fontSize: 22),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text('₹40' ,style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 50.0),
                                      child: Icon(Icons.favorite,color: Colors.pink,size: 22,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      child: Text(' 93%' ,style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Icon(Icons.circle_rounded,color: Colors.greenAccent,size: 18,)
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0),
                                      child: Text(' Available' ,style: TextStyle(color: Colors.greenAccent,fontSize: 16),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  )
              ),
            ],
          ),
        ),

      ),
    );
  }
}