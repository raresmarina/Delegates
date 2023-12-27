# Delegates_Protocols

## Descriere

Acest proiect demonstrează utilizarea delegatelor și protocolurilor pentru a comunica între două ecrane într-o aplicație. Aplicația are două ecrane principale:

1. **MainViewController:** Acesta este ecranul principal care conține o imagine reprezentând o beculeță. Utilizatorul poate atinge becul pentru a naviga către cel de-al doilea ecran și pentru a modifica starea becului.

2. **SwitchViewController:** Acest ecran include un comutator (`UISwitch`) care reprezintă starea becului. Utilizatorul poate comuta între starea de lumină aprinsă și starea de lumină stinsă. Starea curentă a becului este transmisă între cele două ecrane utilizând un protocol și un delegat.

## Structură Proiect

- **MainViewController.swift:** Conține implementarea ecranului principal cu imaginea becului. Aici se realizează navigarea către al doilea ecran și implementarea delegatului pentru a actualiza starea becului.

- **SwitchViewController.swift:** Aici se află implementarea ecranului cu comutatorul care permite utilizatorului să schimbe starea becului. Comutatorul și starea curentă a becului sunt gestionate în acest fișier.

## Tehnologii și Concepte învățate

- Utilizarea delegatelor și protocolurilor pentru a comunica între diferite componente ale aplicației.
- Implementarea unui `UISwitch` și gestionarea evenimentelor asociate cu acesta.
- Utilizarea programatică și prin intermediul Storyboard-ului pentru a crea interfețe utilizator.
- Gestionarea navigării între ecrane într-o aplicație iOS.

