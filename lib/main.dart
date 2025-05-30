import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    home: authCard(),
  ));
}

class authCard extends StatefulWidget {
  const authCard({super.key});

  @override
  State<authCard> createState() => _authCardState();
}

class _authCardState extends State<authCard> {
  //States that change overtime
  int level = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(    //For layout purposes and helps create appbar
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'Identification Card',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontSize: 25,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level +=1;
          });
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.indigo[400],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 30, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/stitch.jpg'),
                radius: 55,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.indigo,
            ),
            Text(
              'NAME: ',
              style: TextStyle(
                color: Colors.grey[850],
                letterSpacing: 2,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5),   //Create an empty box for us
            Text(
              'Stitch',
              style: TextStyle(
                color: Colors.purple[800],
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'CURRENT LEVEL: ',
              style: TextStyle(
                color: Colors.grey[850],
                letterSpacing: 2,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5),   //Create an empty box for us
            Text(
              '$level',
              style: TextStyle(
                color: Colors.purple[800],
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.blue[900],
                ),
                SizedBox(width: 10),
                Text(
                  'stitch@practiceFlutter.com',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}
