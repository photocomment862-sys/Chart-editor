import 'package:flutter/material.dart';
import 'screens/editor_screen.dart';

void main() {
  runApp(const ChartEditorApp());
  }

  class ChartEditorApp extends StatelessWidget {
    const ChartEditorApp({super.key});

      @override
        Widget build(BuildContext context) {
            return MaterialApp(
                  title: 'FNF V Slice Chart Editor',
                        theme: ThemeData.dark(),
                              home: const EditorScreen(),
                                  );
                                    }
                                    }