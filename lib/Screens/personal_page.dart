import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Globals.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  dynamic radiogrpval = 'Gender';
  bool Englishval = false;
  bool Hindival = false;
  bool Gujratival = false;

  final GlobalKey<FormState> PersonalKey = GlobalKey<FormState>();

  final TextEditingController dobController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: Form(
                key: PersonalKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * 0.780,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "DOB",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Company Name First...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global3.dob = val;
                                  });
                                },
                                controller: dobController,
                                decoration: const InputDecoration(
                                  hintText: "DD/MM/YYYY",
                                  border: OutlineInputBorder(),
                                ),
                                onTap: () async {
                                  DateTime? picktime = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2050),
                                  );
                                  if (picktime != null) {
                                    dobController.text =
                                        DateFormat('dd MMMM yyyy')
                                            .format(picktime);
                                  }
                                },
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Marital Status",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              RadioListTile(
                                value: "Male",
                                title: const Text("Male"),
                                groupValue: radiogrpval,
                                onChanged: (val) {
                                  setState(() {
                                    radiogrpval = val;
                                  });
                                },
                              ),
                              RadioListTile(
                                value: "Female",
                                title: const Text("Female"),
                                groupValue: radiogrpval,
                                onChanged: (val) {
                                  setState(() {
                                    radiogrpval = val;
                                  });
                                },
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Languages Known",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: Englishval,
                                title: const Text("English"),
                                onChanged: (val) {
                                  setState(() {
                                    Englishval = val!;
                                  });
                                },
                              ),
                              CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: Hindival,
                                title: const Text("Hindi"),
                                onChanged: (val) {
                                  setState(() {
                                    Hindival = val!;
                                  });
                                },
                              ),
                              CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: Gujratival,
                                title: const Text("Gujrati"),
                                onChanged: (val) {
                                  setState(() {
                                    Gujratival = val!;
                                  });
                                },
                              ),
                              const Text(
                                "Nationality",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Company Name First...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global3.nationality = val;
                                  });
                                },
                                controller: nationalityController,
                                decoration: const InputDecoration(
                                  hintText: "Indian",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Container(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (PersonalKey.currentState!.validate()) {
                                      PersonalKey.currentState!.save();
                                    }
                                  },
                                  child: const Text("SAVE"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
