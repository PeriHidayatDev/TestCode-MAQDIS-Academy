import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/qris_controller.dart';

class QrisView extends GetView<QrisController> {
  const QrisView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QrisView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'QrisView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
