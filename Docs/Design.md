# Design Overview

The goal is to deliver a polished single-player FPS vertical slice with responsive controls, grounded movement, and readable combat feedback. Development progresses through the following milestones:

## Milestones

- [ ] **PR#1 – Project Bootstrap:** Unity URP project, Input System enabled, TestArena scene scaffolded, docs updated.
- [ ] **PR#2 – CI & Tools:** GitHub Actions validation/build pipeline, local build scripts, issue templates, project board link.
- [ ] **PR#3 – Player Controller:** CharacterController locomotion, mouse look, gameplay settings asset, debug HUD.
- [ ] **PR#4 – Rifle:** Hitscan rifle implementation, ammo/reload logic, HUD ammo display, muzzle/tracer/impact VFX.
- [ ] **PR#5 – Enemy & Navmesh:** NavMesh-backed AI with idle/patrol/chase/attack states, health/damage/respawn, arena tuning.

Future enhancements (stretch goals) include ADS sway, expanded arsenal, audio pass, and wave-based survival mode.

## Controls (First Pass)

| Action            | Binding               |
|-------------------|-----------------------|
| Move              | WASD (Input System `Move` action) |
| Look              | Mouse delta |
| Jump              | Space |
| Sprint            | Left Shift |
| Fire              | Left Mouse Button |
| Reload            | R |
| Pause             | Escape |

## Scene Reference

`Assets/Scenes/TestArena.unity` hosts a flat arena with perimeter walls and a handful of cover boxes sized for quick iteration. Spawn points for the player and AI will be established along the north edge, while enemy patrol paths are set near the center.

## Technical Notes

- Universal Render Pipeline assets live under `Assets/Settings/URP/` (created automatically by Unity).
- Gameplay tuning values are organized through ScriptableObjects in `Assets/Config/`.
- The Input System action asset is stored at `Assets/Input/FPS.inputactions` and exposes rebindable actions for player and UI navigation.
- Third-party or downloaded assets must be documented in `Assets/ThirdParty.md` with license references.
