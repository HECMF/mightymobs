# Mighty Mobs

A Minecraft Bedrock Edition addon that adds powerful custom mobs to the game.

## Structure

This addon consists of two packs:

- **MightyMobs_BP/** — Behavior Pack (server-side logic: entity behaviors, loot tables, spawn rules, items, recipes)
- **MightyMobs_RP/** — Resource Pack (client-side assets: models, textures, animations, sounds, render controllers)

## Requirements

- Minecraft Bedrock Edition 1.21.0 or later

## Installation

### For Local Development

1. Copy or symlink `MightyMobs_BP` into `com.mojang/development_behavior_packs/`
2. Copy or symlink `MightyMobs_RP` into `com.mojang/development_resource_packs/`
3. Create a new world and activate both packs

### For Distribution

1. Package both folders into a `.mcaddon` file (rename a `.zip` containing both packs)
2. Double-click the `.mcaddon` file to import into Minecraft
