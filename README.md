# AdbGetevent
adbコマンドで取得したタッチイベントをProcessingで表示します。

## 方法
- `AdbGetevent.pde`を起動させてください。
- dataディレクトリ内で以下のコマンドを打ちます
  - `adb shell getevent -lt > pos.txt`
- スマホを触るとそのタッチイベントがProcessingで描画されます。

## 環境
- Processing3.3.6
- Xperoia XZ
  - 他のAndroid端末の場合、画面のアスペクト比が変わる可能性があります。
  - そのときはその端末に合わせて変更してください。
