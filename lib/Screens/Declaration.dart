import 'package:flutter/material.dart';

class declaration_page extends StatefulWidget {
  const declaration_page({Key? key}) : super(key: key);

  @override
  State<declaration_page> createState() => _declaration_pageState();
}

class _declaration_pageState extends State<declaration_page> {
  Color MyColor = const Color(0xff0475FF);
  var MyTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: const Color(0xff0475FF).withOpacity(0.8),
  );

  bool switchVal = false;
  final GlobalKey<FormState> declarationFormKey = GlobalKey<FormState>();

  final TextEditingController declarationDecscriptionController =
      TextEditingController();

  final TextEditingController declarationDateController =
      TextEditingController();
  final TextEditingController declarationPlaceController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        // leading: backButton(context),
        backgroundColor: MyColor,
        title: const Text("Declaration"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: width,
              alignment: const Alignment(0, 0.5),
              color: MyColor,
            ),
          ),
          Expanded(
            flex: 8,
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
                        key: declarationFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Declaration", style: MyTextStyle),
                                const Spacer(),
                                Switch(
                                  value: switchVal,
                                  onChanged: (val) {
                                    setState(() {
                                      switchVal = val;
                                    });
                                  },
                                ),
                              ],
                            ),
                            (switchVal == true)
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/icons/target.png",
                                        height: height * 0.06,
                                      ),
                                      SizedBox(height: height * 0.025),
                                      TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter your Description First...";
                                          }
                                          return null;
                                        },
                                        // onSaved: (val) {
                                        //   setState(() {
                                        //     Global.DeclarationDescripation =
                                        //         val;
                                        //   });
                                        // },
                                        controller:
                                            declarationDecscriptionController,
                                        decoration: const InputDecoration(
                                          hintText: "Description",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: height * 0.025),
                                      Container(color: Colors.grey, height: 1),
                                      SizedBox(height: height * 0.025),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  "Date",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(height: height * 0.04),
                                                TextFormField(
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Enter your Declaration Date First...";
                                                    }
                                                    return null;
                                                  },
                                                  // onSaved: (val) {
                                                  //   setState(() {
                                                  //     Global.DeclarationDate =
                                                  //         val;
                                                  //   });
                                                  // },
                                                  keyboardType:
                                                      TextInputType.number,
                                                  controller:
                                                      declarationDateController,
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText: "DD/MM/YYYY",
                                                    alignLabelWithHint: true,
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: width * 0.05),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                const Text(
                                                  "Place (Interview Venue/City)",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(height: height * 0.01),
                                                TextFormField(
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Enter your Declaration Place First...";
                                                    }
                                                    return null;
                                                  },
                                                  // onSaved: (val) {
                                                  //   setState(() {
                                                  //     Global.DeclarationPlace =
                                                  //         val;
                                                  //   });
                                                  // },
                                                  controller:
                                                      declarationPlaceController,
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText: "Eg. Surat",
                                                    alignLabelWithHint: true,
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                    //Save And Clear Button
                    (switchVal == true)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (declarationFormKey.currentState!
                                      .validate()) {
                                    declarationFormKey.currentState!.save();
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: MyColor,
                                ),
                                child: const Text("Save"),
                              ),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     declarationFormKey.currentState!.reset();
                              //
                              //     declarationDecscriptionController.clear();
                              //     declarationDateController.clear();
                              //     declarationPlaceController.clear();
                              //     setState(() {
                              //       Global.DeclarationDescripation = null;
                              //       Global.DeclarationDate = null;
                              //       Global.DeclarationPlace = null;
                              //     });
                              //   },
                              //   style: ElevatedButton.styleFrom(
                              //     primary: MyColor,
                              //   ),
                              //   child: const Text("Clear"),
                              // ),
                            ],
                          )
                        : Container(),
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
