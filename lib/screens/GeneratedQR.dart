import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GeneratedQR extends StatefulWidget {
  final myQR;
  const GeneratedQR( this.myQR);

  @override
  _GeneratedQRState createState() => _GeneratedQRState();
}

class _GeneratedQRState extends State<GeneratedQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generated QR "),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: QrImage(
              data: widget.myQR,
              version: QrVersions.auto,
              size: 250.0,
              gapless: false,
            ),
          ),
          SizedBox(height: 50,),
          Text(widget.myQR.toString()),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                child: Text("You have To take ScreenShot For Future Use",style: TextStyle(fontSize: 15,color: Colors.red),)),
          )
        ],
      ),
    );
  }
}