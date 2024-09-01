import 'package:calculadora_getx/controllers/calculadora_controller.dart';
import 'package:calculadora_getx/widgets/line_separator.dart';
import 'package:calculadora_getx/widgets/main_result.dart';
import 'package:calculadora_getx/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResults extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculadoraController>();

  MathResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: '${calculatorCtrl.firstNumber}'),
          SubResult(text: '${calculatorCtrl.operation}'),
          SubResult(text: '${calculatorCtrl.secondNumber}'),
          const LineSeparator(),
          MainResultText(text: '${calculatorCtrl.mathResult}'),
        ],
      ),
    );
  }
}
