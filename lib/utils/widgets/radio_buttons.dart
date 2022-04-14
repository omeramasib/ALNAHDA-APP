import 'package:flutter/material.dart';
 
class RadioButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RadioGroup(
    );
  }
}
 
class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}
 
class JobList {
  String name;
  int index;
  JobList({required this.name, required this.index});
}
 
class RadioGroupWidget extends State {
 
  // Default Radio Button Item
  String radioItem = 'Mango';
 
  // Group Value for Radio Button.
  int id = 1;
 
  List<JobList> jList = [
    JobList(
      index: 1,
      name: "مبتدئ",
    ),
    JobList(
      index: 2,
      name: "ذو تجربة",
    ),
    JobList(
      index: 3,
      name: "محترف",
    ),
    JobList(
      index: 4,
      name: "خبير",
    ),
  ];
 
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
           Padding(
            padding : EdgeInsets.all(14.0),
            child: Text('$radioItem', style: TextStyle(fontSize: 23))
              ),
 
           Expanded(
            child: Container(
            height: 350.0,
            child: Column(
              children: 
                jList.map((data) => RadioListTile(
                  title: Text("${data.name}"),
                  groupValue: id,
                  value: data.index,
                  onChanged: (val) {
                    setState(() {
                      radioItem = data.name ;
                      id = data.index;
                    });
                  },
                )).toList(),
            ),
          )),
          
        ],
    );
  }
}
