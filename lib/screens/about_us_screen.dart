import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
   var height = size.height;
   var  width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("عن النهضة للإسكان",
        style: GoogleFonts.cairo(
          textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: 20,
            fontWeight: FontWeight.bold
            ),
        ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
         Container(
           width:width/2,
           decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/images/Alnahda.png"),
              fit: BoxFit.fill,
          )
        )
         )
        ],
      ),
    );
  }
}
// Text(
//                 "عن النهضة للإسكان",
//                 style: GoogleFonts.cairo(
//                   fontSize: 20,
//                 ),
//               )