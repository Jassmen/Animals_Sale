import 'package:animals_sale/configuration.dart';
import 'package:flutter/material.dart';

class AnimalDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned.fill(child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blueGrey[300],

                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            )),
            Container(
              margin: EdgeInsets.only(top: 30,left: 5,right: 5),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){

                    },),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: (){

                      },),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.topCenter,
                child: Hero(
                    tag: 1,
                    child: Image.asset('assets/pet-cat2.png',)),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 120,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: shadowList
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Sola',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                        Icon(Icons.call_made)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Abyssinian Cat',style: TextStyle(fontStyle: FontStyle.italic),),
                        Text('2 years old'),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.location_on,color: primaryGreen,),

                        Text('5 Bluvarno-Kudriavska Street,Kyiv',style: TextStyle(color:Colors.grey)),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          /*  Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(  backgroundImage: AssetImage('assets/jessy.jpg'),),
                    title: Text('Maya Berkavskaya'),
                    subtitle: Text('owner'),
                    trailing: Text('may,25,2019'),
                  )
                ],
              ),
            ),*/
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 70,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: primaryGreen,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.favorite_border,color: Colors.white,),
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(left: 10,right: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: primaryGreen,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text('Adoption',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
