# Homebrew Tap for Ligrol

macOS 用の [Ligrol](https://ligrol.app/) を Homebrew で入れるための tap。

## インストール

```sh
brew tap megablacklabel/tap
brew trust megablacklabel/tap
brew install --cask ligrol
```

## 更新

```sh
brew upgrade ligrol
```

Ligrol は Homebrew 管理下（Caskroom）を検出すると、アプリ内の自己更新を止めて
`brew upgrade ligrol` を案内する。

## アンインストール

```sh
brew uninstall --cask ligrol
```

設定・本棚データも消す場合:

```sh
brew uninstall --zap --cask ligrol
```

本のファイルと鍵は `~/Library/Application Support/ligrol/` にあり、`--zap` で削除される。
必要なら先にバックアップすること。
