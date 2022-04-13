import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmploymentApplications extends StatelessWidget {
  const EmploymentApplications({Key? key}) : super(key: key);

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
                height: height * 0.90,
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          width: width / 1.10,
                          height: height / 12,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(5)
                              ),
                          child: Center(
                            child: Text(
                              "الإنضمام لفريق العمل",
                              style: GoogleFonts.cairo(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "مرحبا بك في صفحة التوظيف ان كنت مسوق عقاري وتريد الإنضمام الينا يرجى ملئ بياناتك وسنتواصل معك",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.cairo(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
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
                              borderRadius: BorderRadius.circular(3)
                              ),
                              child: TextFormField(
                                keyboardType:  TextInputType.text,
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
                              height: 10,
                            ),
                             Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "البريد الإلكتروني",
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
                              borderRadius: BorderRadius.circular(3)
                              ),
                              child: TextFormField(
                                keyboardType:  TextInputType.emailAddress,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
