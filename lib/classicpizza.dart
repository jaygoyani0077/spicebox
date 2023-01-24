import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bill.dart';

class classicpizza extends StatefulWidget{
  @override
  State<classicpizza> createState() => _classicpizzaState();
}
class _classicpizzaState extends State<classicpizza> {
  final double coverheight=150;
  final double picheight=150;
  int _count =1;
  int _m=349;
  int _n =349;
  void _increment(){
    setState(() {
      if(_count<5){
        _count++;
        _n=_m*_count;
      }
    });
  }
  void _decrement(){
    setState(() {
      if(_count>=2){
        _count--;
        _n=_m*_count;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
                height: double.infinity,
                width: double.infinity,
                color: Color.fromRGBO(137, 207, 240, 100),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40.0,left: 5.0),
                          child: BackButton(
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40.0,left: 250.0),
                          child: IconButton(
                            onPressed: (){
                            },
                            icon: Icon(Icons.favorite_border,color: Colors.black,size: 30,),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: double.infinity,
                      color: Color.fromRGBO(137, 207, 240, 0),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(25.0),topLeft: Radius.circular(25.0)),
                          color: Colors.black,
                        ),
                        width: double.infinity,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 110),
                              child: Text('Classic Pizza',style: TextStyle(fontSize: 22,color: Colors.white)),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Row(
                                  children: [

                                    Container(
                                      margin: EdgeInsets.only(left: 100.0),
                                      child: Icon(Icons.favorite,color: Colors.redAccent,size: 20,),
                                    ),
                                    Container(
                                      child: Text('  96%',style: TextStyle(fontSize: 15,color: Colors.white)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 20.0),
                                      child: Icon(Icons.align_vertical_bottom,color: Colors.orangeAccent,size: 20,),
                                    ),
                                    Container(
                                      child: Text(' Popular',style: TextStyle(fontSize: 15,color: Colors.white)),
                                    ),

                                  ],
                                )
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 115.0),
                                      child: Text('RATING:  ',style: TextStyle(fontSize: 15,color: Colors.white)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 0.0),
                                      child: Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                                    ),
                                    Container(
                                      child: Text(' 4.4',style: TextStyle(fontSize: 15,color: Colors.white)),
                                    ),

                                  ],
                                )
                            ),
                            Container(
                              height: 100,
                              width: double.infinity,
                              color: Colors.black,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 40.5,right: 35.5),
                                    color: Colors.black,
                                    height: 90,
                                    width: 100,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20.0),
                                          child: Text('640 Kkal.',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.0),
                                          child: Text('Energy',style: TextStyle(fontSize: 15,color: Color.fromRGBO(227, 235, 254, 100),),),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 38.5),
                                    color: Colors.black,
                                    height: 90,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20.0),
                                          child: Text('800g.',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.0),
                                          child: Text('Weight',style: TextStyle(fontSize: 15,color: Color.fromRGBO(227, 235, 254, 100),),),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 40.0),
                                    color: Colors.black,
                                    height: 90,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20.0),
                                          child: Text('4.4',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.0),
                                          child: Text('Rating',style: TextStyle(fontSize: 15,color: Color.fromRGBO(227, 235, 254, 100),),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0.0,left: 30.0,right: 30.0),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 0.0,bottom: 0.0,left: 30.0,right: 15.0),
                                    height: 130,
                                    child: Text('''Main Ingredients:
               - Pepperoni
               - Mozzarella
               - Basil
               - Tomato''',style: TextStyle(color: Colors.white,fontSize: 18),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50.0,bottom: 20.0),
                              child: Row(
                                children: [
                                  Text('''We are try to cook item as soon as 
possible. If you have any kind of 
complain please report us.''',style: TextStyle(color: Colors.white,fontSize: 15),)
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 0.0,bottom: 0.0,left: 40.0,right: 1.0),
                                          height: 35,
                                          width: 35,
                                          child: FloatingActionButton(
                                            onPressed: _increment,
                                            splashColor: Colors.blueGrey,
                                            backgroundColor: Colors.grey.shade800,
                                            child: Icon(Icons.add,color: Colors.orangeAccent),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 0.0,bottom: 0.0,left: 1.0,right: 1.0),
                                          child: Center(
                                            child: Text(" $_count ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 0.0,bottom: 0.0,left: 1.0,right: 1.0),
                                          height: 35,
                                          width: 35,
                                          child: FloatingActionButton(
                                            onPressed: _decrement,
                                            splashColor: Colors.blueGrey,
                                            backgroundColor: Colors.grey.shade800,
                                            child: Icon(Icons.remove,color: Colors.orangeAccent),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0.0,left: 50.0),
                                  child: Text("Total: ",style: TextStyle(fontSize: 20,color: Colors.white),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0.0),
                                  child: Text(" ₹",style: TextStyle(fontSize: 25,color: Colors.orangeAccent),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0.0,left: 0.0),
                                  child: Text("$_n",style: TextStyle(fontSize: 20,color: Colors.orangeAccent,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0.0,left: 20.0),
                              height: 80,
                              width: double.infinity,
                              child: Row(
                                children: [

                                  Container(
                                    margin: EdgeInsets.only(top: 15.0,bottom: 10.0,left: 25.0,right: 23.0),
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Color.fromRGBO(137, 207, 240, 100),),
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>bill()));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(left: 50.0,right: 50.0),
                                        height: 45,
                                        child: Row(
                                          children: [
                                            Text('Next',style: TextStyle(fontSize: 18,color: Colors.black),),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    margin: EdgeInsets.only(top: 15.0,bottom: 10.0,left: 0.0,right: 23.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0,color: Colors.white),
                                    ),
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          backgroundColor: Colors.black),
                                      onPressed: (){},
                                      child: Container(
                                        height: 45,
                                        child: Row(
                                          children: [
                                            Icon(Icons.shopping_cart,size: 25,color: Colors.white,),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),

                  ],
                )
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top:90.0),
                    child: Positioned(
                      top: 150,
                      child: buildfoodpic(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }

  buildfoodpic() => CircleAvatar(
    radius: picheight/2,
    backgroundColor: Color.fromRGBO(51, 51, 51, 0),
    backgroundImage: AssetImage('ast/img/p5.png'),
  );

}