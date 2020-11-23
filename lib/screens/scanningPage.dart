import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ScannerPage extends StatefulWidget {
  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  String result;
  Future _qrScan() async{
    try{
      ScanResult qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult.rawContent.toString();
      });
    }catch(error){
      throw "Cannot Open Link";
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
    flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged wsc){
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QRCode Scanner"),
      ),
      body: SafeArea(
          child: Container(
              child: result != null ? WebviewScaffold(
                url: result,
                withZoom: true,
              ) : Container(
                  child: Center(
                      child: Text("Scan QR/Bar Code",
                        style: TextStyle(fontSize: 30,color: Colors.teal),)))
          )
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _qrScan,
          icon: Icon(Icons.camera_alt),
          label: Text("Scan")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

