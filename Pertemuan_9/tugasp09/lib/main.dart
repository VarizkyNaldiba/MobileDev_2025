import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tugasp09/widget/takepicture_screen.dart';

// Single entrypoint: inisialisasi kamera dan jalankan aplikasi yang menampilkan
// layar pengambilan gambar.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Attempt to get available cameras. If it fails, run a fallback app.
  List<CameraDescription> cameras = [];
  try {
    cameras = await availableCameras();
  } catch (e) {
    // ignore: avoid_print
    print('Error fetching cameras: $e');
  }

  final firstCamera = cameras.isNotEmpty ? cameras.first : null;

  runApp(MyApp(firstCamera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription? firstCamera;

  const MyApp({super.key, this.firstCamera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: firstCamera != null
          ? TakePictureScreen(camera: firstCamera!)
          : const Scaffold(body: Center(child: Text('No camera available'))),
    );
  }
}
