# AOSC OS Optical Media Box

## Introduction

This repository contains the source code and image assets for creating the AOSC OS optical release boxes.

## Contents

### Manuals

List of manuals:

- Normal, EN
- Normal, ZH
- Retro, EN
- Retro, ZH

```
make manual
```

### Boxes

List of boxes:

- box-retro-en
- box-retro-zh

Each box has

- 2 source files:
  - `box-retro-LANG.tex`
  - `box-retro-side-LANG.tex`
- 3 output files:
  - `box-retro-LANG.pdf`
  - `box-retro-side-LANG.pdf`
  - `box-retro-all-LANG.pdf`

For compatibility purposes, JPEG outputs `box-retro-all-LANG-%d.jpg` are added along.

## Building

Easy building:

```
make all
```

Targets:

- all
- manual
- box
- en
- zh

## Dependencies

- TeX Live
  - `xelatex`
- Fonts
  - Liberation Sans
  - Liberation Serif
  - Source Code Pro
  - Noto Sans CJK SC

## Copyright

Copyright (c) Various Authors at AOSC.

Document text and PDF artifacts are released with CC BY 4.0 International; redistributions shall contain the list of all contributors.

Source code of LaTeX files are owned by Neruthes; they are not licensed until further noticed.