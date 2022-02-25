import 'package:flutter/material.dart';

class FormScreens extends StatefulWidget {
  const FormScreens({Key? key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreens> {
  String? dropdownvalue;
  var items = [
    'India ',
    'America ',
    'london ',
    'Span ',
    'Franch ',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  "assets/images/scholar.jpg",
                  height: 80,
                  width: 80,
                ),
                Container(
                  width: width * .7,
                  child: Text(
                    "Register yourself to explore your CRUX",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButton(
                  // Initial Value
                  value: dropdownvalue,
                  hint: Text("select option"),
                  underline: Text(""),
                  isExpanded: true,

                  // Down Arrow Icon
                  icon: const Icon(
                    Icons.arrow_downward,
                  ),

                  // Array list of items
                  items: items.map((String country) {
                    return DropdownMenuItem(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
