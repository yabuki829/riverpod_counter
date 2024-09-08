import 'package:counter_riverpod/notifier/CounterNotifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, _) {
                final count = ref.watch(counterNotifierProvider);
                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go back to the Home screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, _) {
          return FloatingActionButton(
            onPressed: () {
              ref.read(counterNotifierProvider.notifier).increment();
            },
            tooltip: 'increment',
            child: const Icon(Icons.plus_one),
          );
        },
      ),
    );
  }
}
