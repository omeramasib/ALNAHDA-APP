import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Menue extends StatefulWidget {
  const Menue({ Key? key }) : super(key: key);

  @override
  State<Menue> createState() => _MenueState();
}

class _MenueState extends State<Menue> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
        title:  Text(
          'عن النهضة؟',
          style: GoogleFonts.cairo(),
          ),
        onTap: () {
        },
      ),
      Divider(
      color: Colors.grey[600],
      height: 10,
      ),
      ListTile(
        title:  Text(
          'سياسة الخصوصية',
          style: GoogleFonts.cairo(),
          ),
        onTap: () {
        },
      ),
      Divider(
      color: Colors.grey[600],
      height: 10,
      ),
      ListTile(
        title:  Text(
          'إتفاقية الإستخدام',
          style: GoogleFonts.cairo(),
          ),
        onTap: () {
        },
      ),
      Divider(
      color: Colors.grey[600],
      height: 10,
      ),
      ListTile(
        title:  Text(
          'طلبات التوظيف',
          style: GoogleFonts.cairo(),
          ),
        onTap: () {
        },
      ),
      Divider(
      color: Colors.grey[600],
      height: 10,
      ),
      ListTile(
        title:  Text(
          'طلبات العقار',
          style: GoogleFonts.cairo(),
          ),
        onTap: () {
        },
      ),
      Divider(
      color: Colors.grey[600],
      height: 10,
      ),
      ListTile(
        title:  Text(
          'حسبة البنك',
          style: GoogleFonts.cairo(),
          ),
        onTap: () {
        },
      ),
      Divider(
      color: Colors.grey[600],
      height: 10,
      ),
      ListTile(
        title:  Text(
          'الفهرس',
          style: GoogleFonts.cairo(),
          ),
        onTap: () {
        },
      ),
      Divider(
      color: Colors.grey[600],
      height: 10,
      ),
      ListTile(
        title:  Text(
          'تواصل معنا',
          style: GoogleFonts.cairo(),
          ),
        onTap: () {
        },
      ),
        //   const DrawerHeader(
        //      child: null,
        //      decoration: BoxDecoration(
        //      color: Color(0xff2d2f7a),
        //      image: DecorationImage(
        //           image: AssetImage("assets/images/شعار النهضة الاسكانية.png"),
        //              fit: BoxFit.cover)
        //       ),
        // ),
          ],
      ),
    );
  }
}