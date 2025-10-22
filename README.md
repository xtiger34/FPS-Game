# FPS Game Vertical Slice

Single-player FPS prototype targeting Unity 2022.3 LTS with the Universal Render Pipeline.

## Getting Started

1. Install [Unity Hub](https://unity.com/download) and add Unity **2022.3 LTS** with Windows Build Support (IL2CPP) and Visual Studio Editor integration.
2. Clone this repository: `git clone https://github.com/your-org/FPS-Game.git`.
3. Open the project in Unity Hub. The root folder contains the Unity project.
4. When Unity prompts to upgrade packages or enable the Input System, accept the prompts.
5. Open the scene at `Assets/Scenes/TestArena.unity` and press **Play**.

## Controls (Editor defaults)

| Action  | Input |
|---------|-------|
| Move    | WASD  |
| Jump    | Space |
| Sprint  | Left Shift |
| Pause   | Escape |
| Fire    | Left Mouse Button |
| Reload  | R |

## Project Structure

```
Assets/             # Unity assets (scenes, prefabs, scripts, config)
Docs/               # Design documentation and references
Packages/           # Unity package manifest
ProjectSettings/    # Unity project settings
Tools/              # Local automation and build scripts
```

## Building (Windows 64-bit)

Run the provided helper script from the repository root (adjust Unity path if needed):

```powershell
pwsh Tools/build-win64.ps1 -ProjectPath . -Out Builds/Windows/FPS.exe
```

```bash
bash Tools/build-win64.sh
```

Builds are placed under `Builds/Windows/` by default.

## Continuous Integration

GitHub Actions workflow (`.github/workflows/unity-ci.yml`) validates formatting via `dotnet format` on each push/pull request. Windows builds run automatically once a Unity license is configured and stored in the `UNITY_LICENSE` secret.

## Roadmap

See `Docs/Design.md` for milestone details and acceptance criteria.
