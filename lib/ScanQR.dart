import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanQR extends StatefulWidget {
  const ScanQR({Key? key}) : super(key: key);

  @override
  State<ScanQR> createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  String qrCodeResult = "Not Yet Scanned";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR Code')
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Result',style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              Text(
                qrCodeResult,
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0,),
              FlatButton(
                padding: EdgeInsets.all(15.0),
                onPressed: () async{
                  String codeScanner = await BarcodeScanner.scan();
                  setState(() {
                    qrCodeResult = codeScanner;
                  });
                }, 
              child: Text('Open Scanner',style: TextStyle(color: Colors.amber[900]),),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color.fromARGB(255, 255, 111, 0),
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              ),
            ],
          ),
      ),
    );
  }
}
