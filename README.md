# Responsive Design Example - Flutter

A clean, modular Flutter template for building **fully responsive applications** that adapt seamlessly across **mobile, tablet, and web platforms**.

## 🚀 Features

* **Responsive Layouts with Breakpoints:** Automatically switches UI between mobile, tablet, and web using defined screen breakpoints.
* **MediaQuery Extensions:** Easy access to screen dimensions, padding, device ratio, and responsive font sizes with custom extensions.
* **Scalable Fonts & Widget Sizes:** Dynamic sizing ensures consistent UI across all screen sizes.
* **Custom Reusable Widgets:** Modular components like `BodyCustom`, `CustomImage`, and `ResponsiveElevatedButton` for faster development.
* **Multi-platform Support:** Ready for Android, iOS, Web, and Desktop platforms.

## 🛠️ Technologies & Packages

* Flutter (>=3.0.0)
* Material Design components
* `LayoutBuilder` and breakpoints for responsive layouts
* `MediaQuery` and custom extensions for responsive dimensions
* Modular architecture with `lib/ui`, `lib/utils`

## 📂 Folder Structure

```
lib/
├── main.dart
├── ui/
│   ├── view/
│   │   └── home/
│   │       ├── home_view.dart
│   │       ├── mobile_home_view.dart
│   │       └── web_home_view.dart
│   └── shared/
│       ├── body_custom.dart
│       ├── responsive_text.dart
│       ├── responsive_elevated_button.dart
│       ├── custom_appbar.dart
│       ├── custom_logo.dart
│       └── reponsive_image.dart
└── utils/
    ├── constants/   # Values, colors, fonts, sizes
    └── responsive_helper/
        ├── media_query_extension.dart  # Extensions for MediaQuery
        └── responsive_ui.dart         # ResponsiveUI widget with breakpoints
```

## 📌 How It Works

1. **Breakpoints:** The `ResponsiveUI` widget selects the appropriate layout (mobile, tablet, or web) based on screen width.
2. **MediaQuery Extensions:** Provide convenient access to screen height, width, padding, device pixel ratio, and responsive font scaling.
3. **Responsive Widgets:** Components like `BodyCustom` and `CustomImage` use the extensions to scale themselves automatically for any screen size.

## 💻 Getting Started

1. Clone the repository:

```bash
git clone https://github.com/asilawad/responsive_design.git
cd responsive_design
```

2. Install dependencies:

```bash
flutter pub get
```

3. Run the app:

```bash
flutter run
```

> Supports mobile, web, and desktop platforms.

## 🔖 License

This project is open-source and available under the MIT License.

