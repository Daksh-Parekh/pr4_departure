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


### Chapter List 
<img src="https://github.com/user-attachments/assets/17bc46c9-7053-4b96-bc39-a365326df8ff" width="300px">
<img src="https://github.com/user-attachments/assets/1f6da2ce-2fdc-45b9-92f5-b104608911ed" width="300px">
*Displays the 18 chapters of the Bhagavad Gita in a ListView. Users can select a chapter to view its verses.*

### Verse Grid  
<img src="https://github.com/user-attachments/assets/26131b68-f3ff-4c4d-9d54-36a23716004b" width="300px">
<img src="https://github.com/user-attachments/assets/796897db-7d51-4ecd-bdbb-72840f805dbc" width="300px">
*Shows all verses of the selected chapter in a GridView, allowing for easy navigation.*

### Verse Detail  

<img src="https://github.com/user-attachments/assets/fdad5110-7be6-4669-9580-ebe5f19270ed" width="300px">
<img src="https://github.com/user-attachments/assets/0148943d-21ea-4025-9a92-a6b78dd88ea9" width="300px">
*Displays the selected verse along with the chapter image and a Text-to-Speech button for listening to the verse.*

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
