# paip

A new Flutter project.

## Getting Started

[开始在 macOS 上构建 Flutter iOS 应用](https://docs.flutter.cn/get-started/install/macos/mobile-ios)

## 环境变量

```
# flutter
export PUB_HOSTED_URL=https://mirrors.tuna.tsinghua.edu.cn/dart-pub;
export FLUTTER_STORAGE_BASE_URL=https://mirrors.tuna.tsinghua.edu.cn/flutter
# export PUB_HOSTED_URL="https://pub.flutter-io.cn"
# export FLUTTER_STORAGE_BASE_URL="https://storage.flutter-io.cn"
export PATH=$PATH:/usr/local/flutter/bin
export PATH=$HOME/.gem/bin:$PATH
```


## 模拟器调试

### ios

```sh
open -a Simulator

flutter run 

# 修改代码后
r    # 热重载
R    # 热重启
```