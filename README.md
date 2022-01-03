# my_app

A new Flutter project. 

これはflutterのサンプルコードのレポジトリです。github Publicでできることが限られているため公開しているだけで、内容はプライベートなものなので誰かに参考にしてもらうことは想定しておりません。

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 環境について

- gitignoreで色々消しているのでcloneしてもおそらく動かない

- osはmacOS。flutterの環境構築は[こちら](https://docs.flutter.dev/get-started/install/macos#android-setup)を参考

- ターミナル上で同様のプロジェクト作成するには以下の通り（gitからcloneした場合は不要）

1. ```flutter doctor```を実行し、少なくともiosかandoroidのどちらかのシミュレータが動く環境になっているか確認（これを作成したとき(2022/1/3)時点ではとりあえずiOSだけ動くようにした）

2. ```open -a Simulator```でシミュレータが動くことを確認

3. ```flutter create アプリ名```でプロジェクトを作成

4. lib/main.dartをVScodeかandoroid Studio上で実行し、動くことを確認（```flutter run```でも良い）

5. shared_preferencesを第6回くらいで使うので、```flutter pub add shared_preferences```を実行

