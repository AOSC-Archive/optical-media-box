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
make manuals
```

### Boxes

// TODO

## Building

Easy building:

```
make all
```

Targets:

- all
- manuals
- boxes
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