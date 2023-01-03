import 'package:flutter/material.dart';

class CustomViewer extends StatefulWidget {
  const CustomViewer({super.key});

  @override
  State<CustomViewer> createState() => _CustomViewerState();
}

class _CustomViewerState extends State<CustomViewer> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 600, maxWidth: 300),
        child: InteractiveViewer(
          minScale: 0.1,
          maxScale: 1,
          //transformationController: TransformationController(),
          //boundaryMargin: const EdgeInsets.all(double.infinity), //Wie viel man weiter scrollen kann
          constrained: false,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                clipBehavior: Clip.none,
                height: 5000,
                width: 5000,
                color: Colors.white,
              ),
              Positioned(
                  child: Container(
                width: 250,
                height: 250,
                color: Colors.amberAccent,
              )),
              Positioned(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.cyanAccent,
                ),
              ),
              Positioned(
                  left: 200,
                  top: 100,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.yellowAccent,
                  )),
            ],
          ),
        ));
  }
}
