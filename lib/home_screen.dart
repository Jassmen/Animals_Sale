import 'package:animals_sale/animal_detail.dart';
import 'package:animals_sale/configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset=0;
  double yOffset=0;
  double scaleFactor=1;
  bool isDrawerOpen=false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor)..rotateY(isDrawerOpen? -0.5:0),
      duration: Duration(milliseconds: 250),
      color: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50,),
            Container(
             margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   isDrawerOpen?IconButton(
                     icon: Icon(Icons.arrow_back_ios,color: primaryGreen,),
                     onPressed: (){
                       setState(() {
                         xOffset=0;
                         yOffset=0;
                         scaleFactor=1;
                         isDrawerOpen=false;
                       });
                     },
                   ):IconButton(icon:Icon(Icons.menu),
                    onPressed: (){
                      setState(() {
                        xOffset=230;
                        yOffset=150;
                        scaleFactor=0.6;
                        isDrawerOpen=true;
                      });
                    },
                  ),
                  Column(
                    children: <Widget>[
                      Text('Location'),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on,color: primaryGreen,),
                          Text('Ukraine'),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/jessy.jpg'),
                  )

                ],),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              margin: EdgeInsets.symmetric(horizontal:20,vertical: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.search),
                  Text('Search pet to adopt'),
                  Icon(Icons.settings)
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          /*height: 50,
                        width: 50,*/
                          padding:EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(categories[index]['iconPath'],height: 50,width: 50,color: Colors.grey[700],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Text(categories[index]['name']),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            _buildPopCAT('assets/pet-cat2.png',Colors.blueGrey,'Sola',2.5,1),
            _buildPopCAT('assets/pet-cat1.png',Colors.orangeAccent,'Orion',2.9,0),
            SizedBox(height: 30,)

          ],
        ),
      ),
    );
  }

  Widget _buildPopCAT(String image,Color color,String animalName,double distance,int tagNum){
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> AnimalDetail()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 250,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: shadowList,
                    ),),
                  Align(
                    child: Hero(
                        tag: tagNum,
                        child: Image.asset(image)),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 80,bottom: 20),
                padding: EdgeInsets.all( 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(animalName,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                        Icon(Icons.call_made)
                      ],
                    ),
                    Text('Abyssinian Cat',style: TextStyle(fontStyle: FontStyle.italic),),
                    Text('2 years old'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.location_on,color: primaryGreen,),

                        Text('Distance:$distance km',),

                      ],
                    ),
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