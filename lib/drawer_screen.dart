import 'package:animals_sale/configuration.dart';
import 'package:flutter/material.dart';

import 'configuration.dart';
import 'configuration.dart';
import 'configuration.dart';


class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding:EdgeInsets.only(top:70),
      child:Column(
        children:<Widget>[
          ListTile(
            leading: CircleAvatar(  backgroundImage: AssetImage('assets/jessy.jpg'),),
            title: Text('Maya Berkavskaya',style:TextStyle(color:Colors.white)),
            subtitle: Text('owner',style:TextStyle(color:Colors.white)),
            trailing: Text('may,25,2019',style:TextStyle(color:Colors.white)),
          ),
          Expanded(child: ListView.builder(
           itemBuilder: (context, index){
             return ListTile(
               leading:Icon(drawerItems[index]['icon'],color:Colors.white),
               title: Text(drawerItems[index]['title'],style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),

             );
           },
            itemCount: drawerItems.length,
            shrinkWrap: true,
          ),),
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Row(
              children: <Widget>[
                SizedBox(width:10,),
                Icon(Icons.settings,color:Colors.white),
                SizedBox(width:5,),
                Text('Settings',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                SizedBox(width:5,),
                Container(height:20,width:2,color:Colors.white),
                SizedBox(width:5,),
                Text('Log out',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),



              ],
            ),
          )
        ]
      )

    );
  }
}
