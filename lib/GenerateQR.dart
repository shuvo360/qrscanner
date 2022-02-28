import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQR extends StatefulWidget {
  const GenerateQR({Key? key}) : super(key: key);

  @override
  State<GenerateQR> createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {
  String qrData = "https://github.com/shuvo360";
  final qrdataFeed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR Code'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QrImage(data: qrData),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Generate QR code',
                style: TextStyle(fontSize: 20.0),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Text Here',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                //button for Rq generator
                child: FlatButton(
                  onPressed: () async {
                    if (qrdataFeed.text.isEmpty) {
                      setState(() {
                        qrData = "";
                      });
                    } else {
                      setState(() {
                        qrData = qrdataFeed.text;
                      });
                    }
                  },
                  child: Text('Generate QR code',style: TextStyle(color: Colors.amber[900]),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color.fromARGB(255, 255, 111, 0)),
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
