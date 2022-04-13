import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class EmploymentApplications extends StatelessWidget {
  const EmploymentApplications({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
       appBar: AppBar(
        title: Text(
          "طلبات التوظيف",
          style: GoogleFonts.cairo(
            textStyle: TextStyle(
                letterSpacing: .5, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                height: height *0.80,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.red,
                ),
                child: Card(
                  
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}