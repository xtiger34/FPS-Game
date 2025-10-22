param([string]$ProjectPath=".", [string]$Out="Builds/Windows/FPS.exe")
& "C:\Program Files\Unity\Hub\Editor\2022.3.*\Editor\Unity.exe" `
  -batchmode -nographics -quit `
  -projectPath "$ProjectPath" `
  -buildWindows64Player "$Out"
