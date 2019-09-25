# AviUtl Plugin SDK Improved
本家AviUtlのSDKのビルドやプロジェクト管理を現代的にできるようにしたものです。

## つかいかた
`aviutl_plugin_sdk`のディレクトリの兄弟ディレクトリにソースやビルド結果を保存するout-of-sourceの仕組みを用いています.
1. `src/CMakeLists.txt`を`example/CMakeLists.txt`を参考に記述.
2. `../src/[plugin]`ディレクトリを作成
3. `[plugin]/CMakeFile.txt`を作成して他プロジェクトを参考に記述.
4. `src/CMakeFile.txt`にプラグインを追加
5. `../build`ディレクトリでコンパイル
```sh
$ cmake ../aviutl_plugin_sdk
$ make [プラグイン名]
```

## オープンソースライセンス
### AviUtlPluginSDK License

The MIT License

Copyright (c) 1999-2012 Kenkun
