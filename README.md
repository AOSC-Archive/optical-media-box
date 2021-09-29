# AOSC OS Optical Media Box

## Introduction

This repository contains the source code and image assets for creating the AOSC OS optical release boxes.




## Contents

While this repository is not exclusively designed for AOSC OS/Retro, we currently only have the materials for Retro.

### Manuals

One manual for 2 languages: `en-US`, `zh-Hans`.

```
just manual
```

### Boxes

One box for 3 languages: `en-US`, `zh-Hans`, `zh-Hant`.

```
just box
```




## Building

Easy building:

```
just all
```

Targets:

- all
- manual
- box
- misc





## Dependencies

- TeX Live
  - `xelatex`
- Fonts
  - IBM Plex Sans
  - Noto Sans
  - Noto Serif
  - Inria Serif
  - Noto Sans CJK
  - Noto Serif CJK




## Version Control

The manual and the box have their respective versions. When creating a tag or a release, we only specify the date `YYYYMMDD`.

### Publish a Tag

- Step 1: Generate all outputs with `just all`.
- Step 2: Push outputs with `just ftp`.
  - Note: This step is optional. We need this step to make sure that **GitHub Actions** can get latest files for generating artifacts.
- Step 3: Push commits to GitHub.
- Step 4: Create a new tag and push it to GitHub with `just tag`.




## Copyright

Copyright (c) Various Authors at AOSC.

Document text and PDF artifacts are released with CC BY 4.0 International; redistributions shall contain the list of all contributors.

Source code of LaTeX files are owned by Neruthes; they are not licensed until further noticed.