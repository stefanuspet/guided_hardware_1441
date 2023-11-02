import 'package:flutter/material.dart';
import 'package:modul_cam_qr_1441/views/camera/camera.dart';
import 'package:modul_cam_qr_1441/constant/app_constant.dart';
import 'package:modul_cam_qr_1441/views/generate_qr/generate_qr_page.dart';
import 'package:modul_cam_qr_1441/views/home_page.dart';
import 'package:modul_cam_qr_1441/views/qr_scan/scan_qr_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteConstant.routeToHome,
      routes: {
        RouteConstant.routeToHome: (context) => const HomePage(),
        RouteConstant.routeToQrGeneratePage: (context) =>
            const GenerateQRPage(),
        RouteConstant.routeToQrScanPage: (context) =>
            const BarcodeScannerPageView(),
        RouteConstant.routeToQrCam: (context) => const CameraView(),
      },
    );
  }
}
