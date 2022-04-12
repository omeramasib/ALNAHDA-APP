import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "عن النهضة للإسكان",
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
            Center(
              child: Container(
                  width: width / 2,
                  height: height / 4,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    image: new AssetImage("assets/images/Alnahda.png"),
                    fit: BoxFit.fill,
                  ))),
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
            SizedBox(height: 10),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Text(
                        "حلول الدفعة العقارية للراغبيين شراء العقارات عن طريق البنوك او الكاش < ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "حلول الرسوم الإدارية والتطوير العقاري < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "إعطاء تمويل مقابل رهن عقاري < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "المتابعة والتحصيل والتأجير وتوفير الضمانات للمالك في إدارة الأملاك < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "بيع شراء او تأجير العقارات < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "تأجير العقد الموحد للإيجار من وزارة الإسكان < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "تسويق نيابة عن الغير < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "تسويق جميع المنتجات حسب الإتفاق < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "تأجير سيارات منتهي بلتمليك عن طريق البنوك < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              ': معتمدين لدى',
              style: GoogleFonts.cairo(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "مصرف الراجحي < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "بنك الرياض < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " NCB البنك الاهلي  < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "بنك البلاد < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "ANB البنك العربي < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "وزارة الإسكان < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  ': تجدونا على عدة فروع',
                  style: GoogleFonts.cairo(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ".(فرع أبها المحالة خلف اسواق الجداف)",
                      textAlign: TextAlign.end,
                      style: GoogleFonts.cairo(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Text(
                        ":فرع أبها البديع < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ".(الراقي)",
                      textAlign: TextAlign.end,
                      style: GoogleFonts.cairo(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Text(
                        ":فرع الخميس < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ".(الشرقية)",
                      textAlign: TextAlign.end,
                      style: GoogleFonts.cairo(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Text(
                        ":فرع الخميس < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ".(شارع الأربعين - الامير متعب , الدور الرابع شقة 14)",
                      textAlign: TextAlign.end,
                      style: GoogleFonts.cairo(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Text(
                        ":فرع جدة < ",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Text(
                        ".(الروابي بإتجاه مكتب العمل فوق صيدلية النهدي مكتب رقم 4)",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.cairo(),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 2),
                        child: Text(
                          ":فرع المدينة المنورة < ",
                          textAlign: TextAlign.end,
                          style: GoogleFonts.cairo(
                            color: Theme.of(context).primaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
