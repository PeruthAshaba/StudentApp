import 'package:flutter/material.dart';
import 'package:studentapp/AboutScreen.dart';

class AboutScreen extends StatelessWidget {
AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student App",style: TextStyle(color: const Color.fromARGB(255, 234, 226, 213)),),
        actions:<Widget> [
          IconButton(onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutScreen(),
          ),
          );
            }, icon: Icon(Icons.menu, color: Color.fromARGB(255, 234, 226, 213),)),
          IconButton(onPressed: null, icon: Icon(Icons.search, color: Color.fromARGB(255, 234, 226, 213),)),
        ],
        
      ),
      //The Body
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 80,),
                
                CircleAvatar(
                  child: Icon(Icons.person, size: 100,),
                  radius: 60,

                ),
                SizedBox(height: 30,),
                Text("About Me", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),),
                SizedBox(height: 30,),

                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Name: Ashaba Peruth', style: TextStyle(color: Colors.blue))
                ],),
                SizedBox(height: 30,),
                
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Student Number: 222017', style: TextStyle(color: Colors.blue))
                ],),
                SizedBox(height: 30,),

                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Email: peruthashaba19@gmail.com', style: TextStyle(color: Colors.blue))
                ],),
                
                SizedBox(height: 50,),
                ElevatedButton(
            onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutScreen(),
          ),
          );
            }, 
            
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
            child: Text('About'),
            ),

              ],
            ),
          ),
        ),

      ),

      //bottom nav bar
      bottomNavigationBar: BottomNavigationBar(items:<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.green,),
        label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.list, color: Colors.green),
        label:"List"),
        BottomNavigationBarItem(icon: Icon(Icons.camera, color: Colors.green,),
        label:"Camera"),
      ]),
    );
  }
}