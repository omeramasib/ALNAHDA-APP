import 'package:blogger_json_example/utils/widgets/radio_buttons.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;
class EmploymentApplications extends StatefulWidget {
  const EmploymentApplications({Key? key}) : super(key: key);

  @override
  State<EmploymentApplications> createState() => _EmploymentApplicationsState();
}

class _EmploymentApplicationsState extends State<EmploymentApplications> {
  // DateFormat? dateFormat
  String? selectedValue;

  List<String> genderItems = [
    'ذكر',
    'انثى',
  ];
  String? _value1;
  String? _value2;

  List<String> socialStatus = [
    'متزوج',
    'اعزب',
    'مطلق',
    'ارمل',
  ];
  final _formKey = GlobalKey<FormState>();
  TextEditingController dateinput = TextEditingController(); 
  DateTime? pickedDate;
  String? birthDateInString;
  
  @override
  void initState() {
    dateinput.text = ""; 
    _value1 = socialStatus[0];
    _value2 = socialStatus[3];
    super.initState();
  }
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
                height: 1400,
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
                            borderRadius: BorderRadius.circular(5)),
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
                          borderRadius: BorderRadius.circular(3)),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
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
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "الجنس",
                            style: GoogleFonts.cairo(
                                fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width / 1.10,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[100],
                            borderRadius: BorderRadius.circular(3)),
                        child:  Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: DropdownButtonFormField2(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            value: selectedValue,
                            isExpanded: true,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black45,
                            ),
                            hint: Text(
                              "${genderItems.first.toString()}",
                              style: TextStyle(
                                // color: Colors.white,
                                fontSize: 16
                                  ),
                            ),
                            iconSize: 30,
                            buttonHeight: 60,
                            buttonPadding:
                                const EdgeInsets.only(left: 20, right: 10),
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            items: genderItems
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            //         validator: (value) {
                            //   if (value == null) {
                            //     return 'Please select gender.';
                            //   }
                            // }
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String?;
                              });
                            },
                            onSaved: (value) {
                              selectedValue = value.toString();
                            },
                          ),
                        ),
                      ),
                    ),
                     SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "العمر",
                            style: GoogleFonts.cairo(
                                fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                       width: width / 1.10,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(3)),
                      child: Directionality(
                        textDirection: ui.TextDirection.rtl,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            // icon: Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Icon(Icons.calendar_today),
                            // ),
                            // hintText: "${birthDateInString != null ? birthDateInString.toString() : "dd/MM/YYYY"}",
                              contentPadding: EdgeInsets.only(right: 10),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffe8ae30), width: 2.0),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                        //     readOnly: true,
                        //     onTap: () async {
                        //                  pickedDate = await showDatePicker(
                        // context: context, initialDate: DateTime.now(),
                        // firstDate: DateTime(1970),
                        // lastDate: DateTime(2101)
                        //                 );
                        //                   if(pickedDate != null ){
                        // print(pickedDate);  
                        // String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate!); 
                        // birthDateInString = "${pickedDate!.month}/${pickedDate!.day}/${pickedDate!.year}";
                        // print(formattedDate); 
                        // print(formattedDate);
                        // setState(() {
                        //    dateinput.text = formattedDate; //set output date to TextField value. 
                        // });
                        //                 }else{
                        // print("Date is not selected");
                        //                 }
                        //               }, 
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
                            "العنوان",
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
                            "الدولة ,المدينة",
                            style: GoogleFonts.cairo(
                               color: Colors.grey
                                ),
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
                            style: GoogleFonts.cairo(
                               color: Colors.grey
                                ),
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
                      height: 15,
                    ),
                     Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "الحالة الإجتماعية",
                            style: GoogleFonts.cairo(
                                fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width / 1.10,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[100],
                            borderRadius: BorderRadius.circular(3)),
                        child:  Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: DropdownButtonFormField2(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            value: _value1,
                            isExpanded: true,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black45,
                            ),
                            hint: Text(
                              "${socialStatus.first.toString()}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                                  ),
                            ),
                            iconSize: 30,
                            buttonHeight: 60,
                            buttonPadding:
                                const EdgeInsets.only(left: 20, right: 10),
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            items: socialStatus
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            //         validator: (value) {
                            //   if (value == null) {
                            //     return 'Please select gender.';
                            //   }
                            // }
                            onChanged: (value) {
                              setState(() {
                                _value1 = value as String?;
                                print(_value1);
                              });
                            },
                            onSaved: (value) {
                              _value1 = value.toString();
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                     Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "مستوى العمل",
                            style: GoogleFonts.cairo(
                                fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    // Column(
                    //   children: [
                    //     RadioGroup()
                    //   ],
                    // )
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
