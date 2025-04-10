# github_clone

A new Flutter project.

## 📱 Features

- 🔍 **GitHub Username Search**
  - Enter a username and fetch data directly from GitHub's API.
  - Displays user avatar, name, and company.
  - Local caching using a simple list mechanism.

- 🧭 **Bottom Navigation Bar**
  - Seamless navigation across sections like Profile, Repositories, Starred Repos, and Organizations.
  - BLoC pattern ensures state is maintained across tabs.

- 🧠 **State Management with BLoC**
  - Uses `flutter_bloc` for predictable state management.
  - DashboardBloc stores:
    - `selectedIndex` for tabs
    - `selectedUser` for profile-wide access across screens

- 🧾 **GitHub User Details**
  - Displays:
    - Avatar
    - Name
    - Company
    - Achievements (Badges)
    - Repositories Count
    - Starred Count
    - Organizations Count

- 🎖️ **Achievement Badges**
  - Horizontally scrollable UI showing earned badges using custom `ListView.builder`.

- 📦 **Repositories**
  - Popular repository cards showing:
    - Repo Name
    - Description
    - Star Count
    - Language with dot indicator

---

## 🧱 Tech Stack

- 💙 Flutter
- 🌀 BLoC (flutter_bloc)
- 🌐 GitHub REST API v3
- 📦 Packages:
  - `flutter_bloc`
  - `http`
  - `equatable` (optional for states)

---


## 🛠️ Installation

```bash
git clone https://github.com/yourusername/github_profile_viewer.git
cd github_profile_viewer
flutter pub get
flutter run
