import 'package:catalog/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  final _namecontroller=TextEditingController();
  final _passwordcontroller=TextEditingController();

  moveToHomeScreen(BuildContext context)async{
    if(_formKey.currentState.validate()){
      setState(() {
        changeButton=true;
      });
      await Future.delayed(Duration(seconds: 2));
      ///
      /// Move to home screen
      ///
      await Navigator.pushNamed(context, AppRoutes.homeScreen);
      _namecontroller.clear();
      _passwordcontroller.clear();
      setState(() {
        changeButton=false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Form(
          key: _formKey,
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
                      controller:_namecontroller,
                      validator: (value){
                        if(value.isEmpty){
                          return "Enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Username',
                        labelText: 'Username',
                      ),
                    ),
                    ///
                    /// Password text field
                    ///
                    TextFormField(
                      controller: _passwordcontroller,
                      validator: (value){
                        if(value.isEmpty){
                          return 'Password cannot be empty';
                        }
                        if(value.length < 6){
                          return 'Password length must be 6 characters';
                        }
                        return null;
                      },
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
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: ()=>moveToHomeScreen(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    height: 50,
                    width: changeButton?70:150,
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
