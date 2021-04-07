import 'package:catalog/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool changeButton=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            ///
            /// Top image
            ///
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20,),

            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
              child: Column(
                children: [
                  ///
                  /// User name text field
                  ///
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Username',
                      labelText: 'Username',
                    ),
                  ),
                  ///
                  /// Password text field
                  ///
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ///
            /// Login Button
            ///
            InkWell(
              onTap: ()async{
                setState(() {
                  if(changeButton){
                    changeButton=false;
                  }
                  else{
                    changeButton=true;
                  }
                });
                await Future.delayed(Duration(seconds: 2));
                ///
                /// Move to home screen
                /// 
                Navigator.pushNamed(context, AppRoutes.homeScreen);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                height: 50,
                width: changeButton?70:150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
