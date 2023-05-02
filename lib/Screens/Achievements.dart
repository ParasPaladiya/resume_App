import 'package:flutter/material.dart';

class Achievements_page extends StatefulWidget {
  const Achievements_page({Key? key}) : super(key: key);

  @override
  State<Achievements_page> createState() => Achievements_pageState();
}

class Achievements_pageState extends State<Achievements_page> {
  List<Row> allTextFeild = [];
  List<TextEditingController> allController = [];
  @override
  initState() {
    super.initState();
    allController.add(TextEditingController());
    allController.add(TextEditingController());

    allTextFeild.add(getTextField(i: 0, row: Row()));
    allTextFeild.add(getTextField(i: 1, row: Row()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Achievements"),
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
              child: Container(
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(
                      "Enter Achievements",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ...allTextFeild
                        .map((e) =>
                            getTextField(i: allTextFeild.indexOf(e), row: e))
                        .toList(),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            allController.add(TextEditingController());
                            allTextFeild.add(getTextField(
                                i: allTextFeild.length, row: Row()));
                          });
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                allController.forEach((element) {
                  print(element.text);
                });
              });
            },
            child: const Text("SAVE"),
          ),
        ],
      ),
    );
  }

  Row getTextField({required int i, required Row row}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: allController[i],
            decoration:
                const InputDecoration(hintText: "Exceeded sales 17% avearage"),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              allController.removeAt(i);
              allTextFeild.remove(row);
            });
          },
          icon: const Icon(Icons.delete),
        ),
      ],
    );
  }
}
