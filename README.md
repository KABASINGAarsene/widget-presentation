# Reorderable ListView Flutter App

A simple Flutter app that demonstrates the ReorderableListView widget, allowing users to drag and reorder numbers from lowest to highest.

---

## Features
- Drag-and-drop list reordering
- Interactive UI updates with setState()
- Simple number sorting exercise
- Clean and minimal UI

---

## How to Run

### 1. Install Flutter
flutter  3.41.0-0.2.pre

### 2. Get dependencies
flutter pub get

### 3. Run the app
flutter run

---

## Widget Description 

ReorderableListView allows users to rearrange list items using drag-and-drop gestures.

---

## Three Important Attributes

### children
Contains the ListTile widgets displayed in the list.

### key
Each item must have a unique key so Flutter can correctly track movement during reordering.

### onReorder
Callback triggered when an item is moved; updates the list order using setState().

---

## Screenshot

![Final UI Screenshot](assets/demo.png)


