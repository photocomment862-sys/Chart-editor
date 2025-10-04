import 'package:flutter/material.dart';
import '../widgets/audio_loader.dart';
import '../widgets/timeline.dart';
import '../widgets/note_grid.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key});

    @override
      State<EditorScreen> createState() => _EditorScreenState();
      }

      class _EditorScreenState extends State<EditorScreen> {
        String? instPath;
          String? voicesPath;

            @override
              Widget build(BuildContext context) {
                  return Scaffold(
                        appBar: AppBar(title: const Text("FNF V Slice Chart Editor")),
                              body: Column(
                                      children: [
                                                Row(
                                                            children: [
                                                                          Expanded(
                                                                                          child: AudioLoader(
                                                                                                            label: "Browse Inst.ogg",
                                                                                                                              onFilePicked: (path) {
                                                                                                                                                  setState(() => instPath = path);
                                                                                                                                                                    },
                                                                                                                                                                                    ),
                                                                                                                                                                                                  ),
                                                                                                                                                                                                                Expanded(
                                                                                                                                                                                                                                child: AudioLoader(
                                                                                                                                                                                                                                                  label: "Browse Voices.ogg",
                                                                                                                                                                                                                                                                    onFilePicked: (path) {
                                                                                                                                                                                                                                                                                        setState(() => voicesPath = path);
                                                                                                                                                                                                                                                                                                          },
                                                                                                                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                                                                                    ],
                                                                                                                                                                                                                                                                                                                                                              ),
                                                                                                                                                                                                                                                                                                                                                                        Expanded(child: Timeline()),
                                                                                                                                                                                                                                                                                                                                                                                  Expanded(child: NoteGrid()),
                                                                                                                                                                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                                                                                                                                                    );
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      }