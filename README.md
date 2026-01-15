# MOS Linux Kernel

MOS Linux Kernel provides **packaged Linux kernel binaries** for use within the MOS ecosystem.

This repository contains the **build scripts, packaging logic, kernel configuration,
and automation** required to build and package the Linux kernel for MOS.

---

## Overview

The Linux kernel is built from **upstream sources** and packaged for integration into MOS.

The kernel is distributed as multiple packages (image, drivers and the precompiled source as a .tar.xz archive)
to allow a clean and modular installation.

No functional changes to the Linux kernel itself are intended.  
The goal of this repository is to provide **consistent, reproducible, and well-integrated
Linux kernel packages** for MOS systems.

---

## Packaging

Depending on the configuration, the kernel is packaged into multiple components, such as:

- Linux kernel image (bzImage)
- Linux kernel drivers (modules)

All kernel components are intended to be installed together as part of a MOS system.

---

## Licensing

The contents of this repository (build scripts, configuration files, patches, and automation)
are licensed under **GPL-3.0**.

The Linux kernel itself is licensed under its respective upstream license.  

---

## Third-Party Software

This repository builds and packages third-party open-source software.
Packaged components remain licensed under their original upstream licenses.

Refer to `THIRD_PARTY.md` for details.
