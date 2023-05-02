import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PDF_Page extends StatefulWidget {
  const PDF_Page({Key? key}) : super(key: key);

  @override
  State<PDF_Page> createState() => _PDF_PageState();
}

class _PDF_PageState extends State<PDF_Page> {
  final pdf = pw.Document();

  @override
  initState() {
    super.initState();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Text("Resume App"),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              Directory dir = await getTemporaryDirectory();

              File file = File("${dir.path}/resume.pdf");

              print("======================");
              print(file);
              print("======================");

              await file.writeAsBytes(await pdf.save());
            },
            icon: const Icon(Icons.save_alt),
          ),
          IconButton(
            onPressed: () async {
              Uint8List bytes = await pdf.save();

              await Printing.layoutPdf(onLayout: (format) => bytes);
            },
            icon: const Icon(Icons.print),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Resume App",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
