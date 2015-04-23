# Win Ro Keyboards

In this repository you will find Microsoft MSKLC Romanian Keyboards source code (*.klc) and NSIS install kits.

Supported Windows Versions: Windows XP, Vista, 7, 8, 8.1 32 and 64 bit.

## rostd

Contains the "Romanian Standard" keyboard layout, compatible with the primary keyboard layout from the SR-13392:2004 Romanian keyboard standard.

It is the same with the "Romanian Standard" keyboard layout found in Windows Vista and newer.

## ropro

Contains the "Romanian Programmers" keyboard layout, compatible with the secondary keyboard layout from the SR-13392:2004 Romanian keyboard standard.

It is the same with the "Romanian Programmers" keyboard layout found in Windows Vista and newer.

## romos

Contains the Microsoft "Romanian Legacy" QWERTZ layout with a few changes:

- `Ş` and `ţ` with cedilla is replaced with `ș` and `ț` with comma below
- Romanian quotes on the first numeric key ([,]), similar with the "Romanian Standard" layout. Unfortunately one needs to use `AltGr + [`, respectively `AltGr + Shift + [` to type `„` and `”`
- Dialog line – on `AltGr + -`
- Dead key (7) is active, dead key with which one can type: `à, è, ù, ì, ò, À, È, Ù, Ì, Ò`
- € Symbol on `AltGr + E`