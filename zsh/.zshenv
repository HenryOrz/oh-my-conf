typeset -U PATH path

# local path
export PATH=/usr/local/bin:$PATH

# java
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.5.jdk/Contents/Home
export JAVA_HOME=$JAVA_11_HOME
export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
export PATH=$JAVA_HOME/bin:$PATH:.

#Flutter
export FLUTTER_HOME=/Users/henry/Library/Flutter/flutter_v1.12.13/flutter
export PATH=$PATH:$FLUTTER_HOME/bin
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
