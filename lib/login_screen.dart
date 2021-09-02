import 'package:flutter/material.dart';

import 'next_page.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController=TextEditingController();

  var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40,),
                TextFormField(
                  controller: emailController,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "E_Mail Address",
                    prefixIcon:Icon(Icons.email),


                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "PassWord",
                    prefixIcon:Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),


                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: (){
                       if(emailController.text=="mostafa" && passwordController.text=="123"){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage(),
                         ));
                       }
                       else{
                         print(emailController.text);
                         print(passwordController.text);
                       }
                    },
                    child: Text("LoGin",
                      style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\' have an account?",),
                    TextButton(
                      onPressed: (){},
                      child: Text("Register"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
