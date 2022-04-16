import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class RealstateRequests extends StatefulWidget {
  const RealstateRequests({ Key? key }) : super(key: key);

  @override
  State<RealstateRequests> createState() => _RealstateRequestsState();
}

class _RealstateRequestsState extends State<RealstateRequests> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "طلبات العقار",
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
                height: 860,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Card(
                    child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: width / 1.10,
                      height: height / 12,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "طلبات العقار",
                          style: GoogleFonts.cairo(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "الإسم الكامل",
                          style: GoogleFonts.cairo(
                              fontSize: 18, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width / 1.10,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(3)),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.black54),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffe8ae30), width: 2.0),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "الهاتف",
                          style: GoogleFonts.cairo(
                              fontSize: 18, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "رقم الهاتف مرفق بكود دولتك ",
                          style: GoogleFonts.cairo(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width / 1.10,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(3)),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.black54),
                      decoration: InputDecoration(
                        hintText: "+966",
                        contentPadding: EdgeInsets.all(5),
                        hintStyle: GoogleFonts.cairo(
                            // color:Colors.white
                            ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffe8ae30), width: 2.0),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Text(
                              "المدينة",
                              style: GoogleFonts.cairo(
                                  fontSize: 18, color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "الحي",
                            style: GoogleFonts.cairo(
                                fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(3)),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.black54),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffe8ae30), width: 2.0),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                     Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(3)),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.black54),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffe8ae30), width: 2.0),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "نوع العقار",
                          style: GoogleFonts.cairo(
                              fontSize: 18, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width / 1.10,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(3)),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.black54),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffe8ae30), width: 2.0),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "السعر",
                          style: GoogleFonts.cairo(
                              fontSize: 18, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width / 1.10,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                        borderRadius: BorderRadius.circular(3)),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.black54),
                      decoration: InputDecoration(
                        hintText: "0.00 USD",
                        contentPadding:EdgeInsets.only(right: 10) ,
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffe8ae30), width: 2.0),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        color: Colors.black54, // background
                        textColor: Colors.white, // foreground
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RealstateRequests()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          'مسح الكل',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      RaisedButton(
                        color: Colors.black54, // background
                        textColor: Colors.white, // foreground
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          'أرسل',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ]
                )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}