import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/add_mahasiswa_controller.dart';

class AddMahasiswaView extends GetView<AddMahasiswaController> {
  const AddMahasiswaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6BAA3),
      appBar: AppBar(
        backgroundColor: const Color(0xffA94438),
        title: Text(
          'Add Students',
          style: GoogleFonts.rubik(color: Colors.white),
        ),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                cursorColor: const Color(0xffCD5C08),
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: GoogleFonts.rubik(
                    color: const Color(0xffA94438),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF5E8B7),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Color(0xffA94438),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Color(0xffA94438),
                    ),
                  ),
                ),
                controller: controller.namaMahasiswa,
              ),
              const SizedBox(height: 16),
              TextFormField(
                cursorColor: const Color(0xffCD5C08),
                decoration: InputDecoration(
                  labelText: 'ID',
                  labelStyle: GoogleFonts.rubik(
                    color: const Color(0xffA94438),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF5E8B7),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Color(0xffA94438),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Color(0xffA94438),
                    ),
                  ),
                ),
                controller: controller.nimMahasiswa,
              ),
              const SizedBox(height: 16),
              TextFormField(
                cursorColor: const Color(0xffCD5C08),
                decoration: InputDecoration(
                  labelText: 'Department',
                  labelStyle: GoogleFonts.rubik(
                    color: const Color(0xffA94438),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF5E8B7),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Color(0xffA94438),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Color(0xffA94438),
                    ),
                  ),
                ),
                controller: controller.jurusanMahasiswa,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: Get.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffD24545),
                  ),
                  onPressed: () {
                    controller.postData();
                    Get.back();
                  },
                  child: Text(
                    '(+) Students',
                    style: GoogleFonts.rubik(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
