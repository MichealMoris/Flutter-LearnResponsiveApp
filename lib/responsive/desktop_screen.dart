import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/container.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text('D E S K T O P 💻'),
      ),
      body: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ResponsiveContainer(
                        color: Theme.of(context).colorScheme.primary,
                        height: 250,
                        text: 'Video',
                        textStyle: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ResponsiveContainer(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.8),
                      height: 150,
                      text: 'Video Title and Description',
                      textStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ResponsiveContainer(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.6),
                    height: 120,
                    text: 'Suggested Videos',
                    textStyle: Theme.of(context).textTheme.labelSmall,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
