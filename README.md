
# HDV2 Dual Screen Info-Beamer Package

This is a customized version of the [hdv2-player](https://github.com/info-beamer/package-hdv2-player) package for [Info-Beamer Hosted](https://info-beamer.com/), designed to support **dual HDMI output** on Raspberry Pi 4 or 5 devices.

## Features

- ✅ Dual-screen video playback
- 🎬 Assign separate playlists to each HDMI output
- 🖥️ Fully configurable via the Info-Beamer Hosted web UI
- 🔁 Loops through each playlist independently

## Folder Structure

```
hdv2-dual-screen/
├── config.json         # Defines the UI for playlist file selection
├── node.lua            # Top-level node rendering both displays
├── playlist1/          # Subnode for HDMI-1 content
│   └── node.lua
├── playlist2/          # Subnode for HDMI-2 content
│   └── node.lua
```

## Usage

1. **Upload the Package**
   - Zip the folder and upload it to [info-beamer hosted](https://info-beamer.com/hosted).

2. **Create a New Setup**
   - After uploading, click the package and create a new setup.

3. **Assign Playlists**
   - In the setup configuration:
     - `Playlist for Screen 1 (HDMI-1)` → videos/images for left screen
     - `Playlist for Screen 2 (HDMI-2)` → videos/images for right screen

4. **Assign the Setup to a Device**
   - Go to your device in the dashboard and assign this setup.

5. **Enable Dual-Screen Mode**
   - In the device settings, set "Video Mode" to a **dual-display configuration**, e.g., `1920x1080 + 1920x1080`.

## Notes

- Both `playlist1` and `playlist2` loop independently.
- You can add video files (`.mp4`, `.mov`, `.mkv`) via the Info-Beamer web UI.
- This package assumes videos are the same resolution as the screen. Scaling is minimal.

## License

MIT License. Based on work by [Info-Beamer](https://github.com/info-beamer).

---

Created for Info-Beamer Hosted digital signage with Raspberry Pi 5.
