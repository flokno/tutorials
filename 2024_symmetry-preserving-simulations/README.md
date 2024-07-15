# Symmetry-preserving ab initio simulations
Symmetry is at the core of many materials properties, at least for the bulk. Controlling the structural symmetry during simulations is therefore pivotal.

## Task 1: Obtain structure from materials project and analyze the symmetry

- [ ] Fetch γ-CuI: mp-22895
- [ ] Convert to FHI-aims input `geometry.in`
- [ ] Inspect `geometry.in`:
    - [ ] What is the space group according to Materialsproject?
    - [ ] What is the space group according to spglib using different tolerances? Use e.g. `ase_geometry_info`

- [ ] Create a primitive cell for space group F-43m (216). Use e.g. `ase_geometry_refine`

### Task 2: Relax the structure

- Use FHI-vibes:
    - https://vibes-developers.gitlab.io/vibes/Documentation/relaxation/#fix_symmetry

## Installation

- Create a virtual environment:
    ```
    python -m venv venv
    source venv/bin/activate
    ```

- Install `FHI-vibes`  and downgrade ASE and spglib:
    ```
    pip install fhi-vibes==1.0.5 ase==3.22.1 spglib==2.4.0
    ```

- Follow steps to step up FHI-vibes: https://vibes-developers.gitlab.io/vibes/Installation/#configuration

- Install `tdeptools`:
    ```
    pip install https://github.com/flokno/tools.tdep/archive/main.zip
    ```
