
import 'package:counter_riverpod/notifier/CounterNotifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Consumer(
              builder: (context, ref, _) {
                final count =
                    ref.watch(counterNotifierProvider);
                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            ElevatedButton(
              onPressed: () => context.go('/details'),
              child: const Text('Go to the Details screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          Consumer(
            builder: (context, ref, _) {
              return FloatingActionButton(
                onPressed: () {

                  ref.read(counterNotifierProvider.notifier).increment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              );
            },
          ),
          Consumer(
            builder: (context, ref, _) {
              return FloatingActionButton(
                onPressed: () {
                  
                  ref.read(counterNotifierProvider.notifier).reset();
                },
                tooltip: 'reset',
                child: const Icon(Icons.delete),
              );
            },
          ),
        ],
      ),
    );
  }
}
