import 'package:flutter/material.dart';

class NoteGrid extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
        return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, // 4 yön
                            ),
                                  itemBuilder: (context, index) {
                                          return GestureDetector(
                                                    onTap: () {
                                                                // Nota ekleme
                                                                            debugPrint("Nota eklendi: $index");
                                                                                      },
                                                                                                child: Container(
                                                                                                            margin: const EdgeInsets.all(2),
                                                                                                                        color: Colors.blueGrey,
                                                                                                                                  ),
                                                                                                                                          );
                                                                                                                                                },
                                                                                                                                                    );
                                                                                                                                                      }
                                                                                                                                                      }