import 'package:flutter/material.dart';
import 'package:studentapp/AboutScreen.dart';
import 'package:studentapp/studentsdetails.dart';

class HomePage extends StatelessWidget {
HomePage({super.key});

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
                  child: Icon(Icons.house_rounded, size: 100,),
                  radius: 60,

                ),
                SizedBox(height: 30,),
                Text("Welcome to your Student App", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),),

                SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('On this App, You will get to know your grades and alot more..........', style: TextStyle(color: Colors.blue))
                ],),
                SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Clink the Button below to view the student details', style: TextStyle(color: Colors.blue))
                ],),
     //Show details button           
                SizedBox(height: 50,),
                ElevatedButton(
            onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudentDetails(),
          ),
          );
            }, 
            
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
            child: Text('Show Details'),
            ),
//AboutScreen Button
            SizedBox(height: 100,),
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
            child: Text('About Me'),
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

