import 'package:demo_project/model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});


  @override
  List<Chat> data=[Chat("Nada", "assets/img.JPG", "hello", "10:00 pm"),
  Chat("Eman", "assets/img2.JPG", "hi" , "10:00 pm"),
  Chat("Omnia", "assets/img3.JPG", "how are you", "10:00 pm") ,
  Chat("Nada", "assets/img4.JPG", "hey", "10:00 pm"),
  Chat("Nisreen", "assets/img5.JPG","how are you", "10:00 pm"),
  Chat("Eman", "assets/img6.JPG", "hi", "10:00 pm"),
  Chat("Nada", "assets/img7.JPG", "heyy", "10:00 pm")];
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("Chats"), actions: [Icon(Icons.settings)], 
      backgroundColor: Colors.blue,elevation: 0.0,),
      body: 
       
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("   favorite contacts", style: TextStyle(fontSize: 18, color: Colors.white,),),
             Container(
              padding: EdgeInsets.only(left: 8),
               height: 120,
               width: double.infinity,
               color: Colors.blue,
               child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                 itemBuilder:(context, index){
                   return Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     CircleAvatar(radius: 40, backgroundImage: AssetImage(data[index].img),),
                     SizedBox(height: 4,),
                     Text(data[index].name, style: TextStyle(color: Colors.white),)
                   ],);
                 }
               , separatorBuilder:(context, index){
                 return SizedBox(width: 5,);
             
               }
               , itemCount: data.length),
             ),
           SizedBox(height: 10,),
           Expanded(
             child: Container(
                   decoration: BoxDecoration(color: Colors.white,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
               child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index){
                        return  ListTile(
                          leading: CircleAvatar(radius: 40, backgroundImage: AssetImage(data[index].img),),
                          title: Text(data[index].name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          subtitle: Text(data[index].msg),
                          trailing: Text(data[index].time),
                        )  ;
                    }, 
                  
                    separatorBuilder: (context, index){
                      return SizedBox(height: 5,) ;
                    }, 
                    
                    itemCount: data.length),
             ),
           ),
              
      
           ],
         ),
      
    );
  }
}