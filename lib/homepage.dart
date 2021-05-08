import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'loginpage.dart';
class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final profilePic = Hero(
      tag: 'hero',
      child:Image.asset('assets/profile.jpg',height: 200.0,width:300.0,),
    );
    final Welcome = Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Shahzad Qisar ',
          style: TextStyle(color: Colors.blue,fontSize: 30.0,fontWeight: FontWeight.bold),
        )
    );
    final Bio = Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(' The question mark ? (also known as interrogation point, query, or eroteme in journalism)  ',
          style: TextStyle(color: Colors.blue,fontSize: 22.0,),
        )
    );
    final fav = Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(' For a secure enterprise-grade online assessment platform, choose Questionmark. Providing a professional service to leading organizations around the world.  ',
          style: TextStyle(color: Colors.blue,fontSize: 18.0,),
        )
    );
    final  logoutButton = Padding (
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        onPressed: (){
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        padding: EdgeInsets.all(12.0),
        color: Colors.green,
        child: Text('LogOut',style: TextStyle(color: Colors.white,fontSize: 18.0),),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: [
          profilePic,
          SizedBox(height: 5.0,),
          Welcome,
          SizedBox(height: 5.0,),
          Bio,
          SizedBox(height: 5.0,),
          fav,
          SizedBox(height: 5.0,),
          logoutButton,
          ],
        ),
      ),
    );

  }
}