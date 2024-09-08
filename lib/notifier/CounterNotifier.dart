import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'CounterNotifier.g.dart';

// @riverpod アノテーションを使用してプロバイダーを定義
@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  int build() {
    return 0; // 初期値 0
  }

  // カウントアップ処理
  void increment() {
    print("プラスしますぜ兄貴");
    state++; // 現在の状態に1を加算
  }

  // リセット処理
  void reset() {
    state = 0; // 状態をリセット
  }
}
