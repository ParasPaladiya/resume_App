import 'package:flutter/material.dart';

class resume_Workspace extends StatefulWidget {
  const resume_Workspace({Key? key}) : super(key: key);

  @override
  State<resume_Workspace> createState() => _resume_WorkspaceState();
}

class _resume_WorkspaceState extends State<resume_Workspace> {
  List<Map> buildOptions = [
    {
      'id': 1,
      'icons': "assets/icons/contact_detail-removebg-preview (1).png",
      'tital': "Contact info",
      'pages': "Contect_info",
    },
    {
      'id': 2,
      'icons': "assets/icons/briefcase.png",
      'tital': "Carrier Objective",
      'pages': "Carrier_Page",
    },
    {
      'id': 3,
      'icons': "assets/icons/account.png",
      'tital': "Personal Details",
      'pages': "personal_page",
    },
    {
      'id': 4,
      'icons': "assets/icons/graduation-cap.png",
      'tital': "Eduction",
      'pages': "Education_page",
    },
    {
      'id': 5,
      'icons': "assets/icons/logical-thinking.png",
      'tital': "Experiences",
      'pages': "Experiences_page",
    },
    {
      'id': 6,
      'icons': "assets/icons/certificate.png",
      'tital': "Texhnical Skills",
      'pages': "Skills_page",
    },
    {
      'id': 7,
      'icons': "assets/icons/open-book.png",
      'tital': "Interest/Hobbies",
      'pages': "Interest_page",
    },
    {
      'id': 8,
      'icons': "assets/icons/project-management.png",
      'tital': "Projects",
      'pages': "Project_page",
    },
    {
      'id': 9,
      'icons': "assets/icons/experience.png",
      'tital': "Achievements",
      'pages': "Achievements_page",
    },
    {
      'id': 10,
      'icons': "assets/icons/handshake.png",
      'tital': "References",
      'pages': "References_page",
    },
    {
      'id': 11,
      'icons': "assets/icons/declaration.png",
      'tital': "Declaration",
      'pages': "declartion_page",
    },
    {
      'id': 12,
      'icons': "assets/icons/declaration.png",
      'tital': "Preview",
      'pages': "/Home",
    }
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("PDF_Page");
            },
            icon: const Icon(Icons.picture_as_pdf),
          ),
        ],
        title: const Text(
          "Resume Builder",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: width,
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                "Build Options",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Column(
              children: buildOptions.map((e) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(e['pages']);
                  },
                  child: Column(
                    children: [
                      const Divider(),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Image.asset(
                            e["icons"],
                            height: 40,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            e["tital"],
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_outlined),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
