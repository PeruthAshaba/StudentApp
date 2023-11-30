import 'package:flutter/material.dart';

class StudentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student App'),
        ),
        body: Center(
          child: StudentDetailsWidget(),
        ),
      ),
    );
  }
}

class StudentDetailsWidget extends StatefulWidget {
  @override
  _StudentDetailsWidgetState createState() => _StudentDetailsWidgetState();
}

class _StudentDetailsWidgetState extends State<StudentDetailsWidget> {
  bool showDetails = false;

  void toggleDetails() {
    setState(() {
      showDetails = !showDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: toggleDetails,
          child: Text(showDetails ? 'Hide Details' : 'Show Details'),
        ),
        
        SizedBox(height: 20),
        if (showDetails)
          Text(
            'Student Details: John Doe, Age: 20, Grade: A',
            style: TextStyle(fontSize: 16, color: Colors.green,),
            
          ),
      ],
      
    );
  }
}
