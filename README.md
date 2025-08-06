# Now Playing iOS Demo — Mini Music Player UI #

<br>

This project is a sleek and modern mini music player component built with **SwiftUI**.
It demonstrates how to design a reusable music player UI with two interactive states:

<br>

**Mini Player** — Fixed at the bottom of the screen, showing:
- Song title
- Artist name
- Album thumbnail
- Play / Pause button
- Tapping it expands into the full player.

<br>

**Full-Screen Player** — Displays:
- Full album artwork
- Song and artist information
- Play / pause / skip controls
- Progress bar with scrubbing
- Swipe-down gesture to collapse back to mini mode

<br>

The player uses mock data only, focusing on smooth animations, gesture transitions, and a clean, modern interface.
<br><br>


## Demo
<br>

<img src="https://github.com/user-attachments/assets/feab358a-df1b-4054-9ccf-2cbaf50a13ac" width="250">
<img src="https://github.com/user-attachments/assets/5b49874b-f513-4cab-bf1e-22c5b8492d2a" width="250">
<img src="https://github.com/user-attachments/assets/d6752a8c-9112-4644-89b5-334d3529fede" width="250">

<br><br>

## Installation
<br>
You can download the latest installable version of Now Playing for iOS:

```bash
 - Click on the <>Code button above; 

 - Click on the Download ZIP option;

 - Open the project folder on your computer;

 - Make sure you have Xcode installed; 

 - Open the .xcodeproj file;

 - In URLConfiguration.swift, replace the user token with a new one. This step is necessary because no user login was implemented; therefore, the user token is stored in the app for development purposes.

 - Run the project in the Xcode simulator.

```
<br>

## Features  
<br>

- Mini Player fixed at the bottom with title, artist, thumbnail, and play/pause
- Full-Screen Player with album art, controls, and progress bar
- Smooth animations for expand/collapse transitions
- Gesture-based navigation (tap to expand, swipe down to collapse)
- Built entirely with SwiftUI
- Mock data for easy testing
- Clean, modern, and responsive UI

<br>

## Architecture  
<br>

- **SwiftUI** declarative UI
- **State management** using SwiftUI’s reactive properties
- **Focused** on UI/UX best practices

<br>

## Project Structure


```bash

📁 NowPlaying
├── 📁 Model
│   └── Song.swift                # Model with mock song data
│
├── 📁 MainView
│   └── ContentView.swift          # Main entry view with mini player
│
└── 📁 FullScreen
    ├── FullScreenPlayerView.swift # Expanded player layout
    ├── CardView.swift             # Displays album artwork
    ├── ControlBarView.swift       # Play / pause / skip controls
    ├── ExpandableView.swift       # Handles expansion animations
    ├── TitleView.swift            # Song title & artist display
    └── GradientBackground.swift   # Background gradient for full player


```
<br>

## Future Improvements 

**General**

- Connect to real music playback APIs (Apple Music / Spotify)
- Add shuffle and repeat controls
- Add visualiser animation to match music beat

<br>

**Feature-specific**

- Support for playlists and song queue
- Implement a lyrics display for the current song
- Custom themes for the player
- Add an artist's song list in the Main View with horizontal scrolling to give the player more life and interactivity
- Improve transitions when switching between mini and full-screen modes

<br>

## Author

Made with care by **Vanessa Hurla**
