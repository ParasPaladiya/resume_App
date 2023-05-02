import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_app/Globals.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  State<ResumePage> createState() => _ResumePageState();
}

bool pickimage = false;

class _ResumePageState extends State<ResumePage> {
  TextStyle mystyle =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preview"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Persona Info",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: CircleAvatar(
                        maxRadius: 50,
                        backgroundImage: FileImage(
                          File(Global.image!.path),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Global.name != null
                        ? Text(
                            "${Global.name}",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const SizedBox(height: 10),
                    Global.Phone != null
                        ? Text(
                            "${Global.Phone}",
                            style: mystyle,
                          )
                        : const Text("---"),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.location_on),
                      label: Global.Address1 != null
                          ? Text(
                              "${Global.Address1}${Global.Address2}${Global.Address3}",
                              style: mystyle,
                            )
                          : const Text("----"),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.mail),
                      label: Global.Email != null
                          ? Text(
                              "${Global.Email}",
                              style: mystyle,
                            )
                          : const Text("----"),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    const Text(
                      "Nationality",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Global3.dob != null
                        ? Text(
                            "${Global3.dob}",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const SizedBox(height: 10),
                    Global3.nationality != null
                        ? Text(
                            "${Global3.nationality}",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    const Text(
                      "Intrest",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Global4.intrest != null
                        ? Text(
                            "${Global4.intrest}",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const Divider(),
                    const SizedBox(height: 10),
                    const Text(
                      "Education",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Global6.School != null
                        ? Text(
                            "${Global6.School}",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const SizedBox(height: 10),
                    Global6.percentage != null
                        ? Text(
                            "${Global6.percentage}%",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const SizedBox(height: 10),
                    Global6.pass != null
                        ? Text(
                            "${Global6.pass}",
                            style: mystyle,
                          )
                        : const Text("----"),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Global2.name != null
                        ? Text(
                            "${Global2.name}",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const SizedBox(height: 10),
                    Global2.carrier != null
                        ? Text(
                            "${Global2.carrier}",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    const Text(
                      "Project About",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Global5.name != null
                        ? Text(
                            "${Global5.name}",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const SizedBox(height: 10),
                    Global5.ProjectDescription != null
                        ? Text(
                            "${Global5.ProjectDescription}",
                            style: mystyle,
                          )
                        : const Text("----"),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
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
