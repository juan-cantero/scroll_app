# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter web application project called `scroll_app`, part of a Flutter web course. The application is configured for Flutter SDK ^3.8.1 and uses Material Design.

## Development Commands

### Package Management
- `flutter pub get` - Install dependencies
- `flutter pub upgrade` - Update dependencies
- `flutter pub outdated` - Check for outdated packages
- `flutter pud add dependencyname` - add a dependency

### Running the Application
- `flutter run` - Run the app in development mode
- `flutter run -d chrome` - Run specifically in Chrome browser
- `flutter run -d web-server` - Run on web server

### Building
- `flutter build web` - Build for web deployment
- `flutter build web --release` - Build optimized release version

### Testing and Analysis
- `flutter test` - Run all tests
- `flutter test test/widget_test.dart` - Run specific test file
- `flutter analyze` - Run static analysis (uses flutter_lints)

## Architecture

This is a standard Flutter application with the following structure:

### Core Components
- `main.dart` - Entry point with `MyApp` root widget using MaterialApp
- `MyHomePage` - Main stateful widget implementing a counter demo
- Uses standard Flutter state management with `StatefulWidget` and `setState()`

### Project Structure
- `lib/` - Main application code
- `test/` - Widget and unit tests
- `web/` - Web-specific assets and configuration
- `pubspec.yaml` - Dependencies and project configuration

### Key Dependencies
- `flutter` - Core Flutter SDK
- `cupertino_icons` - iOS-style icons
- `flutter_lints` - Linting rules for code quality
- `flutter_test` - Testing framework

The application currently implements a basic counter interface as a starting template for Flutter web development.