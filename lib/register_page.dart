import 'package:demo_project/login_page.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: 
      Padding(
        padding:EdgeInsets.only(right: 8, left: 8),
        child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        CircleAvatar(radius: 40,
        backgroundImage: AssetImage("assets/image.png"),
        ),
        SizedBox(height: 30,),

        Text("create an account ", style: TextStyle(color: Colors.blue, fontSize: 20),),

        SizedBox(height: 20,),

  TextField(
          
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: "name",
            prefixIcon: Icon(Icons.person),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)
            )
          ),
        ),

        SizedBox(height: 10,),

        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "email",
            prefixIcon: Icon(Icons.email),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)
            )
          ),
        ),

        SizedBox(height: 10,),

        
        TextField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: "password",
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.remove_red_eye),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)
            )
          ),),

          SizedBox(height: 10,),

          ElevatedButton(onPressed: (){}, child: Text("Register"), style: ElevatedButton.styleFrom(minimumSize: Size(300, 40)),),

          SizedBox(height: 15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("if you an account "),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Login()));
              },
               child: Text("login now"))
            ],
          ),
        
      ]),),
    );
  }
}