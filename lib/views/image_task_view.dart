import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'ss_view.dart';

class ImageTaskScreen extends StatefulWidget {
  const ImageTaskScreen({super.key});

  @override
  State<ImageTaskScreen> createState() => _ImageTaskScreenState();
}

class _ImageTaskScreenState extends State<ImageTaskScreen> {
  File? _image;
  double _currentSize = 200.0;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? selectedImage = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (selectedImage != null) {
      setState(() => _image = File(selectedImage.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Cream background
      appBar: AppBar(
        title: Text(
          "image_task_title".tr,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF4B2C5E), // Purple theme
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image Container with Ornate Border
              Container(
                width: 320,
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFF4B2C5E), width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: _image == null
                    ? const Icon(
                        Icons.image_outlined,
                        size: 100,
                        color: Colors.grey,
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Center(
                          child: Image.file(
                            _image!,
                            width: _currentSize,
                            height: _currentSize,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
              ),
              const SizedBox(height: 40),

              Text(
                "control_size".tr,
                style: const TextStyle(
                  color: Color(0xFF4B2C5E),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Styled Slider
              Slider(
                value: _currentSize,
                min: 50.0,
                max: 300.0,
                activeColor: const Color(0xFF4B2C5E),
                inactiveColor: Color(0xFF4B2C5E).withValues(alpha: 0.2),
                label: _currentSize.round().toString(),
                onChanged: (val) => setState(() => _currentSize = val),
              ),

              const SizedBox(height: 30),

              // Styled Button
              ElevatedButton.icon(
                onPressed: _pickImage,
                icon: const Icon(Icons.photo_library),
                label: Text("pick_image".tr),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4B2C5E),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back),
                    label: Text("back_student".tr),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4B2C5E),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.to(() => const MyTask());
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: Text("next_ss".tr),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4B2C5E),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
