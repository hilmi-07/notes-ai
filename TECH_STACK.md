Notes AI – Technical Stack & Architecture Overview
1. Frontend Framework
Flutter

Purpose:
Cross-platform (iOS & Android) mobil uygulama geliştirme.

Why Flutter:

Tek kod tabanı ile iOS ve Android desteği

Yüksek performans (Skia rendering engine)

Geniş widget ekosistemi

AI destekli özellikler için güçlü async ve state yönetimi altyapısı

Usage in Project:

Tüm UI bileşenleri Flutter widget’ları ile oluşturulmaktadır

Mobile-first tasarım yaklaşımı benimsenmiştir

Material Design ve platform uyumlu UI prensipleri uygulanmaktadır

2. Programming Language
Dart

Purpose:
Flutter framework’ünün ana programlama dili.

Usage in Project:

UI logic

State management

API entegrasyonları

Model ve service katmanları

3. State Management
Riverpod (Planned / In Use)

Purpose:
Uygulama genelinde state yönetimi ve dependency injection.

Why Riverpod:

Compile-time safety

Test edilebilirlik

Global state karmaşasını azaltma

Modüler ve ölçeklenebilir mimari

Usage in Project:

Note list state yönetimi

Authentication state

AI işlem sonuçlarının yönetimi

Theme ve user preferences state’leri

4. Architecture Pattern
Layered Architecture (Clean Architecture Principles)

Layers:

Presentation Layer

Flutter UI (Screens, Widgets)

Domain Layer

Business logic

Use cases

Core entities (Note, User, AIResult)

Data Layer

Repository implementations

API services

Local & remote data sources

Benefits:

Maintainability

Testability

Feature-based scaling

AI modüllerinin izole edilebilir olması

5. Backend & Cloud Services
Firebase (Planned / In Progress)
Firebase Authentication

Purpose:
User authentication and session management.

Usage in Project:

Email/Password authentication

Future: Google / Apple Sign-In

User identity management

Cloud Firestore

Purpose:
NoSQL cloud database for real-time data storage.

Usage in Project:

Notes storage

User-specific data

Sync across devices

Firebase Storage (Optional)

Purpose:
File and attachment storage.

Usage in Project:

Note attachments

AI-generated content exports

6. AI Integration
OpenAI API (Planned)

Purpose:
AI-powered note enhancement features.

Planned Features:

Note summarization

Auto-tagging

Smart title generation

Content rewriting

Future: semantic search

Usage in Project:

API calls from service layer

Async request handling

Response parsing into domain models

7. Local Storage
SharedPreferences / Hive (Planned)

Purpose:
Local persistence for lightweight data.

Usage in Project:

User preferences

Theme mode

Offline-first caching strategy (future)

8. Version Control & Collaboration
Git & GitHub

Purpose:
Source code management and collaboration.

Usage in Project:

Feature-based branching

Milestones & issues tracking

Commit history as development log

Workflow:

Main / develop branches

Issue-driven development

Milestone-oriented planning

9. Development Tools
IDEs

Android Studio

Visual Studio Code

Usage:

Flutter SDK integration

Emulator & device testing

Debugging & profiling

10. Code Quality & Standards

Practices:

Meaningful commit messages

Separation of concerns

Feature-based folder structure

Readable and maintainable code
