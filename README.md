# Inspire

Inspire is a fellowship idea generation app for believers to have fellowship ideas to experience together.

## Getting Started

### [Install Flutter On Your Computer](https://www.youtube.com/watch?v=YVaFoCiQ2SI)

- [Video For Additional Setup Help If Needed](https://www.youtube.com/watch?v=Np0IIY2c0II)
- https://flutter.dev/docs/get-started/install

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Create A New Project
- [To create a new project](https://www.youtube.com/watch?v=QTiMoC99Iw8) open Flutter folder in Visual Studio. 
- Type cmd + p
- ">Flutter:new-protect"
- Select application option
- Give the application a name that is all lowercase with _ to seperate the words

### Pushing Code To Github
- Ideally install the app on your desktop 

```
git init
```

```
git add --all
```

```
git commit -m "commit description"
```

```
git branch -M main
```

```
git remote add origin https://github.com/heavenya/inspire.git
```

```
git push --set-upstream origin main
```

### Alternatve option to git push --set-upstream origin main

```
git push -u orgin main
```

### Commands

- Set Visual Studio To Open At Login In System Prefernces Manually
- Open Terminal In Visual Studio

```
Command + J on keyboard
```

- Open Local Host On Browser

```
flutter run
```

- Open Mobile Simulator

```
open -a Simulator
```

- Check For Errors

```
flutter doctor
```

### Technology Stack

- Flutter Framework Which Is Written In Dart

### Sending To iOS App Store
- From VS terminal
- Use login password for local computer
```
flutter build ios
```
- [YouTube video for sending the app to the iOS app store.](https://www.youtube.com/watch?v=fXeDe9tafG8)

### Sending To Google Play Store
- From VS terminal
```
flutter clean
```

```
flutter pub get
```

```
flutter build appbundle --release
```
- Go into /Users/Your_User_Name/Documents/GitHub/inspire/build/app/outputs/bundle/release/app-release.aab
- Add it to release production for create [release app bundle](https://play.google.com/console/u/0/developers/7927132658135855370/app/4976283006490081760/tracks/4698269767694297279/releases/2/prepare)

### Credits
- Created my free logo at LogoMakr.com @logomakr. Used just the image of the fish.

### Additional Resources
- [Reference for how appp was built](https://medium.com/flutter-community/a-deep-dive-into-pageview-in-flutter-with-custom-transitions-581d9ea6dded)
- [Reference for push notification integration](https://pub.dev/packages/flutter_local_notifications)
- [Reference for getting app icons](https://appicon.co)
- [Reference for sending the app to the iOS app store.](https://docs.flutter.dev/deployment/ios)
- [Reference 2 for sending the app to the iOS app store. Use cmd + r to run the project from X Code](https://www.youtube.com/watch?v=fXeDe9tafG8&t=686s)
- [Reference for sending the app to the Google Play store](https://www.youtube.com/watch?v=g0GNuoCOtaQ)
- [Reference 2 for sending the app to the Google Play store](https://medium.com/@psyanite/how-to-sign-and-release-your-flutter-app-ed5e9531c2ac)
- [Refernece 3 for sending the app to the Google Play store](https://stackoverflow.com/questions/51534616/how-to-change-package-name-in-flutter) 
- [Privacy policy generator that we didn't Use](https://simpleprivacypolicy.org/?gclid=CjwKCAjw0tHoBRBhEiwAvP1GFd_xC72pruEGbHJnwloVJw6AfAHM9zdcp9wdeoKgwNsFxZukYIn4UhoCFL8QAvD_BwE)
- [Terms of use generator that we didn't use](https://privacyterms.io/terms-conditions-generator/)
- [Sourcing color shades for options on cards](https://api.flutter.dev/flutter/material/Colors-class.html) 

### Updating iOS App Store
- Open X Code
- Open Project Path
- Hover on top menu
- Select Product
- Select Archive
- Select Distribute App and click through
- Open [apple developer website](https://appstoreconnect.apple.com/apps/)
- Select submit for review

### Updating Android App Store
- 

### Tools

- [Presentator for Prototype Reference](https://app.presentator.io/#/w5n7gfqm)
- [Visual Studio Code](https://code.visualstudio.com)
- [Google Calendar for objectives/meetings](https://calendar.google.com/calendar/u/0?cid=aGVhdmVueWEudXNAZ21haWwuY29t)
- [Slack For Communication](https://join.slack.com/t/heavenya/shared_invite/zt-tan426tx-XTzUHxegbN5ZzHY81iwMGw)
