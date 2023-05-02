// import 'package:flutter/material.dart';
// import 'package:resume_app/Globals.dart';
//
// class Experiences_page extends StatefulWidget {
//   const Experiences_page({Key? key}) : super(key: key);
//
//   @override
//   State<Experiences_page> createState() => _Experiences_pageState();
// }
//
// class _Experiences_pageState extends State<Experiences_page> {
//   bool pressbutton = false;
//   dynamic Employeeval = "Employed";
//   @override
//   Widget build(BuildContext context) {
//     double _width = MediaQuery.of(context).size.width;
//     double _height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Experience"),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       backgroundColor: Colors.grey.shade200,
//       body: Column(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: Colors.blue,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Expanded(
//               flex: 12,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 10, horizontal: 10),
//                     child: Container(
//                       height: _height * 0.750,
//                       width: _width,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Company Name",
//                               style: TextStyle(
//                                 color: Colors.blue,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                 hintText: "New Enterprise , san Francisco",
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             const Text(
//                               "School/Collage/Institute",
//                               style: TextStyle(
//                                 color: Colors.blue,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                 hintText: "Ouality Text Engineer",
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             const Text(
//                               "Roles (optional)",
//                               style: TextStyle(
//                                 color: Colors.blue,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             TextFormField(
//                               maxLines: 3,
//                               decoration: const InputDecoration(
//                                 hintText:
//                                     "Working with team members to come up with new concepts and product analysis...",
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                             const SizedBox(height: 25),
//                             const Text(
//                               "Employed Status",
//                               style: TextStyle(fontSize: 15),
//                             ),
//                             Row(
//                               children: [
//                                 Radio(
//                                   value: "male",
//                                   groupValue: Employeeval,
//                                   onChanged: (val) {
//                                     setState(() {
//                                       Employeeval = val;
//                                     });
//                                   },
//                                 ),
//                                 const Text(
//                                   "Previously Employed",
//                                   style: TextStyle(fontSize: 15),
//                                 ),
//                                 const SizedBox(width: 20),
//                                 Radio(
//                                   value: "Female",
//                                   groupValue: Employeeval,
//                                   onChanged: (val) {
//                                     setState(() {
//                                       Employeeval = val;
//                                     });
//                                   },
//                                 ),
//                                 const Text(
//                                   "Currently Employed",
//                                   style: TextStyle(fontSize: 15),
//                                 ),
//                               ],
//                             ),
//                             const Divider(color: Colors.grey, thickness: 1),
//                             const SizedBox(height: 10),
//                             Text("Data Jointed"),
//                             Column(
//                               children: [
//                                 TextFormField(
//                                   decoration: InputDecoration(
//                                     hintText: "DD/MM/YYYY",
//                                     border: OutlineInputBorder(),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(width: 120),
//                             const Text("Data Exit"),
//                             const SizedBox(height: 20),
//                             Row(
//                               children: [
//                                 // join Date
//                                 Expanded(
//                                   child: Column(
//                                     children: [
//                                       const Text(
//                                         "Date Joined",
//                                         style: TextStyle(
//                                           color: Colors.grey,
//                                           fontSize: 17,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                       SizedBox(height: _height * 0.01),
//                                       TextFormField(
//                                         validator: (val) {
//                                           if (val!.isEmpty) {
//                                             return "Enter your Join Date First...";
//                                           }
//                                           return null;
//                                         },
//                                         onSaved: (val) {
//                                           setState(() {
//                                             Global.experienceJoinDate = val;
//                                           });
//                                         },
//                                         keyboardType: TextInputType.datetime,
//                                         decoration: const InputDecoration(
//                                           hintText: "DD/MM/YYYY",
//                                           alignLabelWithHint: true,
//                                           border: OutlineInputBorder(),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(width: 10),
//                                 // Exit Date
//                                 Expanded(
//                                   child: (Global.experienceEmployedStatus ==
//                                           "Previously Employed")
//                                       ? Column(
//                                           children: [
//                                             const Text(
//                                               "Exit Joined",
//                                               style: TextStyle(
//                                                 color: Colors.grey,
//                                                 fontSize: 17,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                             const SizedBox(height: 10),
//                                             TextFormField(
//                                               validator: (val) {
//                                                 if (val!.isEmpty) {
//                                                   return "Enter your Exit Date First...";
//                                                 }
//                                                 return null;
//                                               },
//                                               onSaved: (val) {
//                                                 setState(() {
//                                                   // Global.experienceExitDate =
//                                                   //     val;
//                                                 });
//                                               },
//                                               keyboardType:
//                                                   TextInputType.datetime,
//                                               decoration: const InputDecoration(
//                                                 hintText: "DD/MM/YYYY",
//                                                 alignLabelWithHint: true,
//                                                 border: OutlineInputBorder(),
//                                               ),
//                                             ),
//                                           ],
//                                         )
//                                       : Container(),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text("SAVE"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:resume_app/Globals.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  Color MyColor = const Color(0xff0475FF);
  var MyTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: const Color(0xff0475FF).withOpacity(0.8),
  );

  final GlobalKey<FormState> experienceFormKey = GlobalKey<FormState>();

  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController experienceCollageController =
      TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController joinDateController = TextEditingController();
  final TextEditingController exitDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor,
        title: const Text("Experience"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: _width,
              alignment: const Alignment(0, 0.5),
              color: MyColor,
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              color: const Color(0xffEDEDED),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      margin: const EdgeInsets.only(
                          top: 30, bottom: 20, right: 20, left: 20),
                      padding: const EdgeInsets.all(20),
                      child: Form(
                        key: experienceFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Company Name", style: MyTextStyle),
                            SizedBox(height: _height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Company Name First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global1.experienceCompanyName = val;
                                });
                              },
                              controller: companyNameController,
                              decoration: const InputDecoration(
                                hintText: "New Enterprise, San Francisco",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: _height * 0.015),
                            Text("School/Collage/Institute",
                                style: MyTextStyle),
                            SizedBox(height: _height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your School/Collage/Institute First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global1.experienceCollage = val;
                                });
                              },
                              controller: experienceCollageController,
                              decoration: const InputDecoration(
                                hintText: "Quality Test Engineer",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: _height * 0.015),
                            Text("Roles (optional)", style: MyTextStyle),
                            SizedBox(height: _height * 0.015),
                            TextFormField(
                              onSaved: (val) {
                                setState(() {
                                  Global1.experienceRole = val;
                                });
                              },
                              maxLines: 3,
                              controller: roleController,
                              decoration: const InputDecoration(
                                hintText:
                                    "Working With team member to\ncome Up With new concepts and\nproducts analysis...",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: _height * 0.015),
                            const Text(
                              "Employed Status",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            // Employed Status Radio Button
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        value: "Previously Employed",
                                        groupValue:
                                            Global1.experienceEmployedStatus,
                                        onChanged: (val) {
                                          setState(() {
                                            Global1.experienceEmployedStatus =
                                                val.toString();
                                          });
                                        },
                                      ),
                                      const Text(
                                        "Previously Employed",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        value: "Currently Employed",
                                        groupValue:
                                            Global1.experienceEmployedStatus,
                                        onChanged: (val) {
                                          setState(() {
                                            Global1.experienceEmployedStatus =
                                                val.toString();
                                          });
                                        },
                                      ),
                                      const Text(
                                        "Currently Employed",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(color: Colors.grey, height: 1),
                            //Join Date Exit Date
                            SizedBox(height: _height * 0.015),
                            Row(
                              children: [
                                // join Date
                                Expanded(
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Date Joined",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: _height * 0.01),
                                      TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter your Join Date First...";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          setState(() {
                                            Global1.experienceJoinDate = val;
                                          });
                                        },
                                        keyboardType: TextInputType.datetime,
                                        controller: joinDateController,
                                        decoration: const InputDecoration(
                                          hintText: "DD/MM/YYYY",
                                          alignLabelWithHint: true,
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: _width * 0.05),
                                // Exit Date
                                Expanded(
                                  child: (Global1.experienceEmployedStatus ==
                                          "Previously Employed")
                                      ? Column(
                                          children: [
                                            const Text(
                                              "Exit Joined",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: _height * 0.01),
                                            TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter your Exit Date First...";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                setState(() {
                                                  Global1.experienceExitDate =
                                                      val;
                                                });
                                              },
                                              keyboardType:
                                                  TextInputType.datetime,
                                              controller: exitDateController,
                                              decoration: const InputDecoration(
                                                hintText: "DD/MM/YYYY",
                                                alignLabelWithHint: true,
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Container(),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    //Save And Clear Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (experienceFormKey.currentState!.validate()) {
                              experienceFormKey.currentState!.save();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: MyColor,
                          ),
                          child: const Text("Save"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            experienceFormKey.currentState!.reset();
                            companyNameController.clear();
                            experienceCollageController.clear();
                            roleController.clear();
                            setState(() {
                              Global1.experienceCompanyName = null;
                              Global1.experienceCollage = null;
                              Global1.experienceRole = null;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: MyColor,
                          ),
                          child: const Text("Clear"),
                        ),
                      ],
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
