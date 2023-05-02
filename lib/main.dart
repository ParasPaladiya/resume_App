import 'package:flutter/material.dart';
import 'package:resume_app/Screens/Achievements.dart';
import 'package:resume_app/Screens/Carrier_objective_page.dart';
import 'package:resume_app/Screens/Contect_info.dart';
import 'package:resume_app/Screens/Declaration.dart';
import 'package:resume_app/Screens/Education.dart';
import 'package:resume_app/Screens/Experience.dart';
import 'package:resume_app/Screens/Interest.dart';
import 'package:resume_app/Screens/Projects.dart';
import 'package:resume_app/Screens/References.dart';
import 'package:resume_app/Screens/Resume_Workspace.dart';
import 'package:resume_app/Screens/Skills.dart';
import 'package:resume_app/Screens/pdf_page.dart';

import 'Screens/personal_page.dart';
import 'Screens/resumePage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/Home': (context) => const ResumePage(),
        "resume_Workspace ": (context) => const resume_Workspace(),
        "Contect_info": (context) => const ContecinfoPage(),
        "Carrier_Page": (context) => const Carrier_Page(),
        "personal_page": (context) => const PersonalPage(),
        "Education_page": (context) => const Education_page(),
        "Experiences_page": (context) => const ExperiencePage(),
        "Interest_page": (context) => const Interest_page(),
        "Project_page": (context) => const Project_page(),
        "Achievements_page": (context) => const Achievements_page(),
        "References_page": (context) => const References_page(),
        "declartion_page": (context) => const declaration_page(),
        'Skills_page': (context) => const SkillsPage(),
        'PDF_Page': (context) => const PDF_Page(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const resume_Workspace(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Resume Builder"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                "Resume",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  "assets/icons/open-cardboard-box.png",
                  height: 60,
                ),
                const SizedBox(height: 20),
                const Text(
                  "No Resume + Create new resume.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
