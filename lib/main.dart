import 'package:flutter/material.dart';
import 'package:qrscodecanner/screens/generatingPage.dart';
import 'package:qrscodecanner/screens/scanningPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Scan/Generate QR Code")),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => QRGenerator()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width*0.6,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(child: Text("Generate QRCode",style: TextStyle(fontSize: 20,color: Colors.white),)),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScannerPage()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width*0.6,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(child: Text("Scan Code",style: TextStyle(fontSize: 20,color: Colors.white),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
