import 'package:flutter/material.dart';

import '../Globals.dart';

class Education_page extends StatefulWidget {
  const Education_page({Key? key}) : super(key: key);

  @override
  State<Education_page> createState() => _Education_pageState();
}

class _Education_pageState extends State<Education_page> {
  final GlobalKey<FormState> projectKey = GlobalKey<FormState>();

  final TextEditingController courseController = TextEditingController();
  final TextEditingController collageController = TextEditingController();
  final TextEditingController percentageController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        centerTitle: true,
        elevation: 0,
      ),
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
                          vertical: 15, horizontal: 10),
                      child: Container(
                        height: height * 0.6,
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
                                "Course/Degree",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: courseController,
                                decoration: const InputDecoration(
                                  hintText: "B . Tech information Technology",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "School/Collage/Institute",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
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
                                    Global6.School = val;
                                  });
                                },
                                controller: collageController,
                                decoration: const InputDecoration(
                                  hintText: "Bhagavan Mahavir Universcity",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Percentage",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
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
                                    Global6.percentage = val;
                                  });
                                },
                                controller: percentageController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  hintText: "70% (or) 7.0 CGPA",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Year Of Pass",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Company Name First...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global6.pass = val;
                                  });
                                },
                                controller: yearController,
                                decoration: const InputDecoration(
                                  hintText: "2019",
                                  border: OutlineInputBorder(),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (projectKey.currentState!.validate()) {
            projectKey.currentState!.save();
          }
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
