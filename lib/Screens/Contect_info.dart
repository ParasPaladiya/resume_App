import 'dart:io';
import 'package:flutter/material.dart';
import 'package:resume_app/Globals.dart';
import 'package:image_picker/image_picker.dart';

class ContecinfoPage extends StatefulWidget {
  const ContecinfoPage({Key? key}) : super(key: key);

  @override
  State<ContecinfoPage> createState() => _contactinfoState();
}

class _contactinfoState extends State<ContecinfoPage> {
  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PhoneController = TextEditingController();
  final TextEditingController Address1Controller = TextEditingController();
  final TextEditingController Address2Controller = TextEditingController();
  final TextEditingController Address3Controller = TextEditingController();

  int initialIndex = 0;
  File? image;

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Resume Workspace",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 50),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          initialIndex = 0;
                        },
                      );
                    },
                    child: const Text(
                      "Contact",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        initialIndex = 1;
                      });
                    },
                    child: const Text(
                      "Phone",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: IndexedStack(
              index: initialIndex,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(30),
                        width: _width,
                        height: _height * 0.6,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(blurRadius: 1),
                          ],
                        ),
                        child: Form(
                          key: contactFormKey,
                          child: Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: TextFormField(
                                  controller: nameController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your name first..";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.name = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Name",
                                    icon: Icon(Icons.people, size: 40),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: EmailController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your Email first..";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.Email = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Email",
                                    icon: Icon(Icons.mail, size: 40),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: PhoneController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your Phone first..";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.Phone = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Phone",
                                    icon: Icon(Icons.phone_android, size: 40),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: TextFormField(
                                  controller: Address1Controller,
                                  keyboardType: TextInputType.streetAddress,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your Address first..";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.Address1 = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Address  (Street,Building No)",
                                    icon: Icon(Icons.location_on_outlined,
                                        size: 40),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 66, right: 20),
                                child: TextFormField(
                                  controller: Address2Controller,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your Address Line 2 first..";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.Address2 = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Address Line 2",
                                    // icon: Icon(Icons.people),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 66, right: 20),
                                child: TextFormField(
                                  controller: Address3Controller,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your Address line 3 first..";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.Address3 = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                      hintText: "Address Line 3"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 100,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (contactFormKey.currentState!.validate()) {
                                contactFormKey.currentState!.save();
                                print("Name: $Global.name");
                                print("Email:$Global.Email");
                                print("Email:$Global.Phone");
                                print("Email:$Global.Address1");
                                print("Email:$Global.Address2");
                                print("Email:$Global.Address3");
                              }
                            },
                            child: const Text("Save"),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              contactFormKey.currentState!.reset();
                              nameController.clear();
                              EmailController.clear();
                              PhoneController.clear();
                              Address1Controller.clear();
                              Address2Controller.clear();
                              Address3Controller.clear();

                              setState(() {
                                Global.name = "";
                                Global.Email = "";
                                Global.Phone = "";
                                Global.Address1 = "";
                                Global.Address2 = "";
                                Global.Address3 = "";
                              });
                            },
                            child: const Text("Clear"),
                          ),
                          const SizedBox(width: 100),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(30),
                          height: 220,
                          width: _width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 80),
                          child: CircleAvatar(
                            backgroundImage: (Global.image != null)
                                ? FileImage(Global.image!)
                                : null,
                            minRadius: 60,
                            backgroundColor: Colors.grey,
                            child: (Global.image != null)
                                ? const Text("")
                                : const Text("ADD"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 160, left: 215),
                          child: FloatingActionButton(
                            onPressed: () async {
                              XFile? pickedFile = await _picker.pickImage(
                                  source: ImageSource.camera);

                              setState(() {
                                Global.image = File(pickedFile!.path);
                              });
                            },
                            mini: true,
                            child: const Icon(Icons.add),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
