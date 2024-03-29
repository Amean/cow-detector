import 'package:tflite/tflite.dart';
import 'dart:io';

class YOLODetection {
  Future detect(File image) async {
    String? res = await Tflite.loadModel(
      model: "assets/yolov2_tiny.tflite",
      labels: "assets/yolov2_tiny.txt",
      // useGpuDelegate: true,
    );

    print(yolov2Tiny(image));

    await Tflite.close();
  }

  Future yolov2Tiny(File image) async {
    var recognitions = await Tflite.detectObjectOnImage(
      path: image.path,
      model: "YOLO",
      threshold: 0.3,
      imageMean: 0.0,
      imageStd: 255.0,
      numResultsPerClass: 1,
    );
    return recognitions;
  }
}
