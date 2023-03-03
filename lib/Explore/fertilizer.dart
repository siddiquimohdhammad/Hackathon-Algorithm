import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Fertilizer extends StatefulWidget {
  const Fertilizer({super.key});

  @override
  State<Fertilizer> createState() => _FertilizerState();
}

class _FertilizerState extends State<Fertilizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBar(tabs: []),
    );
  }
}
