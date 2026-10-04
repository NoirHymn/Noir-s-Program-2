# جدول التمرين - مشروع Flutter

التطبيق عبارة عن WebView بيعرض `assets/index.html` (ملف واحد فيه التصميم والخطوط والمنطق، وشغال بدون إنترنت).

## الملفات
- `pubspec.yaml` : إعدادات المشروع والمكتبة (`webview_flutter`).
- `lib/main.dart` : كود التطبيق (بيحمّل الصفحة ويدعم الاهتزاز الخفيف).
- `assets/index.html` : الصفحة نفسها. عدّل فيها وأعد البناء.
- `build.sh` : بيولّد هيكل أندرويد جديد بـ `flutter create` وبيحط ملفاتنا فوقه وبيبني الـ APK.
- `.github/workflows/build.yml` : بيشغّل `build.sh` على GitHub.

## بناء الـ APK على GitHub
1. ارفع محتوى المجلد كله لـ repository جديد (مع `.github`).
2. تبويب **Actions** > **Build APK** > **Run workflow** (أو بيشتغل لحاله مع كل push).
3. بعد 5-10 دقايق: **Releases > latest > workout-plan.apk**.

## بناء الـ APK على جهازك (Termux أو غيره)
```bash
bash build.sh
```
بيطلع `workout-plan.apk` بنفس المجلد. بدك Flutter مثبّت.

## ملاحظات
- الـ APK موقّع بمفتاح debug، وبينفع للاستعمال الشخصي.
- الأيقونة هي الافتراضية لـ Flutter.
- الخطوط مضمّنة جوّا `index.html` بصيغة base64، وتراخيصها OFL (Nunito, DM Sans, Tajawal, Baloo Bhaijaan 2).
