import 'package:flutter/material.dart';
import 'package:resume_app/Globals.dart';

class Carrier_Page extends StatefulWidget {
  const Carrier_Page({Key? key}) : super(key: key);

  @override
  State<Carrier_Page> createState() => _Carrier_PageState();
}

class _Carrier_PageState extends State<Carrier_Page> {
  final TextEditingController carrierController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  final GlobalKey<FormState> carrierKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrier Objective"),
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
            child: Form(
              key: carrierKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Container(
                        height: height * 0.3,
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
                                "Career Objective",
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
                                    Global2.carrier = val;
                                  });
                                },
                                controller: carrierController,
                                maxLines: 6,
                                decoration: const InputDecoration(
                                  hintText: "Description",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Container(
                        height: height * 0.220,
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
                              const SizedBox(height: 20),
                              const Text(
                                "Current Designation (Experienced Candidate)",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 7),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Company Name First...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global2.name = val;
                                  });
                                },
                                controller: nameController,
                                decoration: const InputDecoration(
                                  hintText: "Software Engineer",
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
          if (carrierKey.currentState!.validate()) {
            carrierKey.currentState!.save();
          }
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
