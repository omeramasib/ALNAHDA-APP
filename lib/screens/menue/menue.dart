import 'package:blogger_json_example/screens/menue/employment_applications.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'about_us_screen.dart';
import 'real_estate_requests.dart';

class Menue extends StatefulWidget {
  const Menue({Key? key}) : super(key: key);

  @override
  State<Menue> createState() => _MenueState();
}

class _MenueState extends State<Menue> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'عن النهضة؟',
                textAlign: TextAlign.end,
                style: GoogleFonts.cairo(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AboutUsScreen()),
                );
              },
            ),
            Divider(
              color: Colors.grey[600],
              height: 10,
            ),
            ListTile(
              title: Text(
                'طلبات التوظيف',
                textAlign: TextAlign.end,
                style: GoogleFonts.cairo(color: Colors.white),
              ),
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmploymentApplications()),
                );
              },
            ),
            Divider(
              color: Colors.grey[600],
              height: 10,
            ),
            ListTile(
              title: Text(
                'طلبات العقار',
                textAlign: TextAlign.end,
                style: GoogleFonts.cairo(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RealstateRequests()),
                );
              },
            ),
            Divider(
              color: Colors.grey[600],
              height: 10,
            ),
            ListTile(
              title: Text(
                'حسبة البنك',
                textAlign: TextAlign.end,
                style: GoogleFonts.cairo(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.grey[600],
              height: 10,
            ),
            ListTile(
              title: Text(
                'تواصل معنا',
                textAlign: TextAlign.end,
                style: GoogleFonts.cairo(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// child: Column(
      //   // mainAxisAlignment:MainAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(top: 50,right: 25),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: [
      //           Text(
      //             'عن النهضة؟',
      //       style: GoogleFonts.cairo(),
      //           )
      //         ],
      //       ),
      //     ),
      //           Divider(
      // color: Colors.grey[400],
      // height: 10,
      // ),
      //      Padding(
      //       padding: const EdgeInsets.only(top : 5 ,right: 20),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: [
      //           Text(
      //             'سياسة الخصوصية',
      //       style: GoogleFonts.cairo(),
      //           )
      //         ],
      //       ),
      //     ),
          
      //   ],
      // ),