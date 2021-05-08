import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'homepage.dart';
class Signup extends StatefulWidget {
  static String tag = 'Signup-page';
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/apple.png'),
      ),
    );
    final username = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'User Name',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),)
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),)
      ),
    );
    final password = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),)
      ),
    );
    final  signupButton = Padding (
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
        child: Text('SignUp',style: TextStyle(color: Colors.white,fontSize: 18.0),),
      ),
    );
    final forgotLabel = FlatButton(
      onPressed: (){
        Navigator.push
          (
            context,
            MaterialPageRoute(builder: (context)
            {
              return new LoginPage() ;
                })
        );
      },
      child: Text('Already have an account ? Sigin ',
        style: TextStyle(color: Colors.purple,fontSize: 15.0),
      ),
    );
    return Scaffold(
      appBar: AppBar(
          title: Text('Signup'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: [
            logo,
            SizedBox(height: 50.0,),
            username,
            SizedBox(height: 15.0,),
            email,
            SizedBox(height: 15.0,),
            password,
            SizedBox(height: 24.0,),
            signupButton,
            SizedBox(height: 10.0,),
            forgotLabel,
          ],
        ),
      ),
    );
  }
}
