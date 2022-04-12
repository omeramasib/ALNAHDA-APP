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
      body: SingleChildScrollView(
        child: Column(
          children: [
           Center(
             child: Container(
               width:width/2,
               height: height/4,
               decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/images/Alnahda.png"),
                  fit: BoxFit.fill,
              )
          )
             ),
           ),
           SizedBox(
           height: 30,
           ),
           Text(
             'عن النهضة',
             style: GoogleFonts.cairo(
               fontSize: 20,
               fontWeight: FontWeight.w700,
               color: Colors.red,
               decoration: TextDecoration.underline,
               decorationColor: Theme.of(context).primaryColor,
             ),
           ),
           SizedBox(
             height: 10,
           ),
           Text(
             'النهضة الإسكانية العقارية تاسست عام 2017 بمجال العقارات ومن ثم توسعت لمجال التجارة والتسويق والحلول المالية, موقع الإدارة بابها حي المنسك ولديها عدة فروع بابها والخميس وجدة والمدينة المنورة',
             textAlign: TextAlign.center,
             style: GoogleFonts.cairo(
               fontSize: 15,
             ),
           ),
           SizedBox(
             height: 10,
           ),
            Text(
             ': نقدم لكم عدة خدمات مميزة , من بينها',
             style: GoogleFonts.cairo(
               fontSize: 16,
               fontWeight: FontWeight.w700,
               color: Colors.red,
             ),
           ),
          ],
        ),
      ),
    );
  }
}
