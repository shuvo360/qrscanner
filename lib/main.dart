import 'package:flutter/material.dart';
import 'package:qrscanner/GenerateQR.dart';
import 'package:qrscanner/ScanQR.dart';



void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Scanner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        height: 500,
        color: Colors.cyanAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
                image: NetworkImage(
                    'https://q-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyYwscUPOH_qPPe8Hp0HAbFNMx-TxRFubpg&usqp=CAU')),
            // first button
            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ScanQR()));
              },
              child: Text(
                'Scan QR Code',
                style: TextStyle(color: Colors.amber[900]),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color.fromARGB(255, 42, 19, 63)),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // second button

            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GenerateQR()));

              },
              child: Text('Generate QR Code',style: TextStyle(
                color: Colors.amber[900],
              ),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color.fromARGB(255, 209, 109, 32)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
