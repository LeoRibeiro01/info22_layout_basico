import 'package:flutter/material.dart';
import 'package:info22_layout_basico/ui/pages/home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const info22(),
    theme:ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink)
  )
 )
);
}
