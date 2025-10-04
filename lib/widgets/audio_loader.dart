import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class AudioLoader extends StatelessWidget {
  final String label;
    final Function(String) onFilePicked;

      const AudioLoader({super.key, required this.label, required this.onFilePicked});

        @override
          Widget build(BuildContext context) {
              return ElevatedButton(
                    onPressed: () async {
                            FilePickerResult? result = await FilePicker.platform.pickFiles(
                                      type: FileType.custom,
                                                allowedExtensions: ['ogg'],
                                                        );
                                                                if (result != null && result.files.single.path != null) {
                                                                          onFilePicked(result.files.single.path!);
                                                                                  }
                                                                                        },
                                                                                              child: Text(label),
                                                                                                  );
                                                                                                    }
                                                                                                    }