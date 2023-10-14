import 'package:demo_project/home_page.dart';
import 'package:demo_project/register_page.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       Padding(
         padding: const EdgeInsets.only(left: 8, right: 8),
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/image.png"),
              ),
          
              SizedBox(height: 40,),
          
              Text(
                "Login to your account",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
          
             SizedBox(height: 25,),
          
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue)
                        ),
                        ),
              ),
                
             SizedBox(height: 15,),
             
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                    hintText: "password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)
                  )
                ),
              ),
                
                SizedBox(height: 20,),
          
          
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

              }, child: Text("login"),
               style: ElevatedButton.styleFrom(minimumSize: Size(400, 40), )
             ),
          
              
          
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("if you havent an account "),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Register()));
                  }, child: Text("create one !"))
                ],
               ),
          
          
              
                
                
            ],
          ),
       ),
      );
  }
}
