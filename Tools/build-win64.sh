#!/usr/bin/env bash
set -euo pipefail
UNITY="/Applications/Unity/Hub/Editor/2022.3*/Unity.app/Contents/MacOS/Unity"
"$UNITY" -batchmode -nographics -quit -projectPath "." -buildWindows64Player "Builds/Windows/FPS.exe"
