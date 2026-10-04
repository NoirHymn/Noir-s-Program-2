#!/usr/bin/env bash
# يبني workout-plan.apk من ملفات المشروع (pubspec.yaml + lib + assets).
# بيشتغل على GitHub Actions وعلى أي جهاز عليه Flutter.
set -euo pipefail

rm -rf _scaffold
flutter create --platforms=android --org com.noir --project-name workout_plan _scaffold

# حط ملفاتنا فوق الهيكل اللي ولّده Flutter
rm -rf _scaffold/test
cp -r lib assets pubspec.yaml _scaffold/

cd _scaffold
flutter pub get
flutter build apk --release
cd ..

cp _scaffold/build/app/outputs/flutter-apk/app-release.apk workout-plan.apk
echo "تم: workout-plan.apk"
