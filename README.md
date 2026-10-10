# Task list with Flutter and Firebase

A small Flutter/Dart prototype with email/password authentication screens and a Firestore-backed task list.

This repository uses Flutter, not Node.js. The C++ platform-runner files are part of its desktop scaffolding; the application UI and task logic are in `lib/`.

## Implemented flow

- Registration and sign-in screens using Firebase Authentication.
- A live task list driven by Firestore snapshots.
- Task creation and deletion, including swipe-to-delete.
- A simple Flutter interface with named routes.

## Code walkthrough

- [Application startup](lib/main.dart): Firebase initialization and routes.
- [Sign-in screen](lib/pages/login.dart).
- [Registration screen](lib/pages/registration.dart).
- [Task list](lib/pages/home.dart): Firestore subscription and mutations.
- [Dependencies](pubspec.yaml): Flutter, Firebase and email validation.

## Local setup

Use Flutter with a Dart version compatible with the constraint in `pubspec.yaml`.

1. Run `flutter pub get`.
2. Configure your own Firebase development project and supported target platforms. Replace the checked-in example configuration with your own configuration.
3. Enable email/password authentication and set up Firestore with appropriate access rules.
4. Run `flutter run` on a configured device or emulator.

Do not test against someone else's Firebase resources or store personal data in an unreviewed development database.

## Prototype boundaries

The published task screen reads a shared `items` collection; it does not implement per-user task ownership. Its menu's sign-out action changes routes rather than explicitly ending the Firebase session. These behaviors need work before treating it as a private, multi-user application.

Task priorities and editing are not implemented in the displayed task flow. This is an earlier learning project, not a production task-management service.
