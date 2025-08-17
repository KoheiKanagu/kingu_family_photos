# GitHub Copilot Instructions

## Language Configuration

Please conduct all code reviews and provide feedback in **Japanese (日本語)**.

## ローカライズ運用ルール

- アプリのローカライズ文字列は `slang` パッケージを使用します。
- 文字列は `lib/i18n/ja.i18n.json` に記述し、参照します。
- **json ファイルを修正した場合は、必ず以下のコマンドを実行してください。**

```sh
dart run build_runner build --delete-conflicting-outputs
```

このコマンドを実行しないと、文字列が参照できません。

### slang の利用例

- build_runner 実行後は、以下のように `i18n` オブジェクトを使ってローカライズ文字列を参照できます。

```dart
import 'package:kingu_family_photos/gen/strings.g.dart';
// ...existing code...
Text(i18n.familyPhotos)
// ...existing code...
```

※ `i18n.xxx` の形式で各言語の文字列を取得できます。
