import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final String forwardButtonText;
  final String backButtonText;
  final VoidCallback forwardButtonPressed;
  final VoidCallback backButtonPressed;
  final Widget column;

  PageLayout({
    required this.column,
    required this.forwardButtonText,
    required this.backButtonText,
    required this.forwardButtonPressed,
    required this.backButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 420,
              child: column
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: SizedBox(
                height: 52,
                child: TextButton(
                  onPressed: backButtonPressed,
                  child: Text(
                    backButtonText,
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 52,
                child: TextButton(
                  onPressed: forwardButtonPressed,
                  child: Text(
                    forwardButtonText,
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

