import 'package:flutter/material.dart';

import '../Globals.dart';

class Project_page extends StatefulWidget {
  const Project_page({Key? key}) : super(key: key);

  @override
  State<Project_page> createState() => _Project_pageState();
}

class _Project_pageState extends State<Project_page> {
  bool cval = false;
  bool cppval = false;
  bool Flutterval = false;

  final GlobalKey<FormState> projectKey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects"),
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
                key: projectKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      child: Container(
                        height: height * 0.865,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Project Title",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: namecontroller,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Company Name First...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global5.name = val;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: "Resume Builder App",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Technologies",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: cval,
                                title: const Text("English"),
                                onChanged: (val) {
                                  setState(() {
                                    cval = val!;
                                  });
                                },
                              ),
                              CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: cppval,
                                title: const Text("Hindi"),
                                onChanged: (val) {
                                  setState(() {
                                    cppval = val!;
                                  });
                                },
                              ),
                              CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: Flutterval,
                                title: const Text("Gujrati"),
                                onChanged: (val) {
                                  setState(() {
                                    Flutterval = val!;
                                  });
                                },
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Role",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                maxLines: 2,
                                decoration: const InputDecoration(
                                  hintText:
                                      "Organize team members, Code analysis",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Technologies",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "5 - Programmers",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Projects Description",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: descriptioncontroller,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Company Name First...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global5.ProjectDescription = val;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: "Enter Your Project Descripation",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (projectKey.currentState!.validate()) {
                                      projectKey.currentState!.save();
                                    }
                                  },
                                  child: Text("SAVE"),
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
