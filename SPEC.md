# Specification for Mighty Craft Addon

## Details
- Addon ist für Bedrock Version

## Mobs

### Bombardilo Crodcodilo
- Dieser Mob soll wie der Brainrot Bombardilo Corocodilo aussehen
- Man Soll zu zweit auf ihm fliegen können und ihn auch steuern können.
- Er droppt TNT
- Er kann fliegen
- Als Angriff lässt er TNT fallen

### Mutanten Mob - Skelett
- Ist eine Mutation des normalen Skeletts
- Ist größer als das normale Skelett
- Hat detailliertere Texturen als das normale Skelett
- Droppt mehr als das normale Skelett

### Mutanten Mob - Zombie
- Ist eine Mutation des normalen Zombie
- Ist größer als der normale Zombie
- Hat detailliertere Texturen als der normale Zombie
- Droppt mehr Items als der normale Zombie

### Mutanten Mob - Enderman
- Ist eine Mutation des normalen Enderman
- Ist größer als der normale Enderman
- Hat detailliertere Texturen als der normale Enderman
- Droppt bis zu fünf Enderperlen

### Mix Mob
- Ist eine Kombination aus Enderman, Skelett, Zombie und Eisengolem
- **Enderman-Anteil**: Kann sich teleportieren
- **Skelett-Anteil**: Schießt Pfeile aus der Ferne
- **Zombie-Anteil**: Greift im Nahkampf an, brennt nicht in der Sonne (wegen Eisengolem-Anteil)
- **Eisengolem-Anteil**: Hohe HP, hoher Nahkampfschaden, starker Knockback
- Spawnt überall (Overworld, Nether, End)
- Aussehen: Mix aus allen vier Mobs (Enderman-Körper, Skelett-Arme, Zombie-Kopf, Eisengolem-Stärke/Größe)
- Droppt eine Kombination der Drops aller vier Mobs (Enderperlen, Knochen, Pfeile, verrottetes Fleisch, Eisenbarren)

### Tralalero Tralala
- Integriert aus dem Brainrot AddOn
- Ein Hai mit drei Beinen und Nike-Schuhen
- Kann an Land laufen und im Wasser schwimmen
- Atmet sowohl an Land als auch unter Wasser
- Tanzt wenn er im Wasser steht
- Spawnt nachts auf Gras in Strand-, Ozean- und Overworld-Biomen
- 25 HP, 3 Schaden, greift Spieler im Nahkampf an
- Droppt Kabeljau, Prismarinscherben und selten Lederstiefel

## Fahrzeuge (Craftbar)

### Auto (`mighty:auto`)
- 80 HP, Speed 0.4, Scale 1.2
- 4 Sitze (Fahrer + 3 Passagiere)
- Boden-Fahrzeug mit `input_ground_controlled`
- Immun gegen Fallschaden, kein Despawn
- Crafting: Iron Ingots, Redstone, Glass Pane, Copper Ingot
- Droppt 3-5 Iron Ingots, 1-2 Copper Ingots

### Flugzeug (`mighty:flugzeug`)
- 60 HP, Fly Speed 0.6, Scale 1.5
- 2 Sitze (Pilot + Passagier)
- Fliegt wie Bombardilo (`can_fly` + `movement.fly`)
- Immun gegen Fallschaden, kein Despawn
- Crafting: Iron Ingots, Copper Ingots, Redstone, Glass Pane
- Droppt 2-4 Iron Ingots, 1-2 Copper Ingots

### Mech (`mighty:mech`)
- 150 HP, Speed 0.2, Attack 15, Scale 2.0, Knockback-Resistenz 0.8
- 1 Sitz (Cockpit)
- Geritten: Spieler steuert, Spieler greift an
- Nicht geritten: Greift automatisch feindliche Mobs an (wie Iron Golem)
- Immun gegen Fallschaden + Explosion, kein Despawn
- Crafting: Iron Ingots, Redstone, Copper Ingots
- Droppt 4-6 Iron Ingots, 2-3 Copper Ingots, 1 Redstone

### Boot (`mighty:boot`)
- 40 HP, Underwater Speed 0.15, Scale 1.3
- 4 Sitze (Kapitän + 3 Passagiere)
- Schwimmt auf Wasser mit `buoyant`
- Atmet Luft und Wasser, kein Despawn
- Crafting: Oak Planks, Copper Ingot
- Droppt 4-6 Oak Planks, 1 Copper Ingot
