# Bhagavad Gita App

## Overview  
The **Bhagavad Gita App** is a Flutter application that provides users with an interactive and localized experience to explore the teachings of the Bhagavad Gita. The app features Text-to-Speech functionality, multi-language support (English and Hindi), and seamless navigation through chapters and verses using JSON parsing.

---

## Features  

### 1. **Text-to-Speech**  
- Listen to verses in English or Hindi with a single tap.

### 2. **Localization**  
- Supports both English and Hindi for a personalized experience.  
- Language preference can be toggled dynamically.

### 3. **JSON Parsing**  
- Chapters and verses are dynamically loaded using JSON, ensuring efficient and scalable content management.

### 4. **Three-Page Navigation**  
- **Page 1**: ListView displaying the 18 chapters of the Bhagavad Gita.  
- **Page 2**: GridView showcasing verses for the selected chapter.  
- **Page 3**: Detailed view showing the selected verse, chapter image, and Text-to-Speech button.

---

## Demo  

### Watch the Video  
Experience the app in action!  


---

## Screenshots  

### Splash Screen

<img src="https://github.com/user-attachments/assets/c1764f17-b161-4c4e-ac0b-2ec370d94278" width="300px">

### Chapter List 

<img src="https://github.com/user-attachments/assets/f9acaa0a-72c7-4980-8e37-b7d571b92acf" width="300px">
<img src="https://github.com/user-attachments/assets/f55b85d7-bf5c-43e5-a531-6f306f76ab4c" width="300px">
<img src="https://github.com/user-attachments/assets/ab720a4d-48c7-49da-90c1-0e301cd88bcd" width="300px">

### Verse Grid  

<img src="https://github.com/user-attachments/assets/9de2d3f2-17af-422d-8c9a-a81ed04433ad" width="300px">
<img src="https://github.com/user-attachments/assets/e3df8e66-dde2-4e4c-bc30-78b477dfc629" width="300px">

### Verse Detail  

<img src="https://github.com/user-attachments/assets/2abe07f1-cdc6-42c6-b804-10767eb1e28c" width="300px">
<img src="https://github.com/user-attachments/assets/d806b799-3085-498c-bea6-4dd066c58d3f" width="300px">

---


## Video  

https://github.com/user-attachments/assets/9eb1d530-e08e-47d8-a264-b0c70143a605

---


## Project Structure  

- **Models**: Defines chapter and verse classes.  
- **Screens**: Includes pages for chapters, verses, and detailed verse views.  
- **Localization**: Uses the `intl` package for multi-language support.  
- **Services**: Manages Text-to-Speech functionality and JSON parsing.

---

## Installation  

1. Clone the repository:  
   ```bash
   git clone https://github.com/username/bhagavad-gita-app.git

## Dependencies  

The app uses the following dependencies to ensure seamless functionality:  

### 1. `flutter_localizations`  
- **Purpose**: Provides multi-language support for English and Hindi.  
- **Usage**: Enables localization to enhance user experience.  
- **Integration**:  
  Add to `pubspec.yaml`:  
  ```yaml
  flutter_localizations:
    sdk: flutter

### 2. `flutter_tts`  

- **Purpose**:  
  Enables Text-to-Speech functionality to read verses aloud, enhancing accessibility and user engagement.  

- **Features**:  
  - Supports both English and Hindi pronunciations.  
  - Allows customization of speech speed, pitch, and language.  
  - Provides callbacks for events like speech start, stop, and completion.  

- **Integration**:  
  Add the following to your `pubspec.yaml` file:  
  ```yaml
  flutter_tts: ^3.6.0

### 3. `provider`  

- **Purpose**:  
  Simplifies state management across the app, making it easy to manage shared data and logic.  

- **Features**:  
  - Helps manage chapter and verse data.  
  - Efficiently toggles between English and Hindi localization.  
  - Reduces boilerplate code compared to manual state management.  

- **Integration**:  
  Add the following to your `pubspec.yaml` file:  
  ```yaml
  provider: ^6.1.3
