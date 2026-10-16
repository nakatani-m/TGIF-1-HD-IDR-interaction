# TGIF-1-HD-IDR-interaction

Analysis scripts and input files used to investigate HD-IDR interactions in TGIF-1 using VcMD simulations.

---

## Repository Structure

### Analysis/

Scripts used for trajectory analysis.

#### PCA/

Principal component analysis (PCA) based on HD-IDR distance coordinates.

#### Qcano/

Canonical distribution reconstruction and parameter updates for subsequent VcMD iterations.

#### dbscan.py

Density-based clustering of PCA coordinates.

---

### Clustered_structure/

Representative structures used for structural analysis and discussion in this study.

Each directory contains the 10 structures closest to the cluster centroid.

Only clusters discussed in this study are included.

#### pIDR-HD/

Representative structures from clusters C1 and C2 of the phosphorylated model.

#### non-pIDR-HD/

Representative structures from cluster C1 of the non-phosphorylated model.



---

### input_files/

Input files used for MD and VcMD simulations.

#### common/

Files shared between both systems.

Examples:

- `params.dat`
- force-field related `.itp` files

#### pIDR-HD/

Input files for the phosphorylated model.

#### non-pIDR-HD/

Input files for the non-phosphorylated model.

---

## Analysis Workflow

```text
Input files
      ↓
VcMD simulations
      ↓
Qcano reconstruction
      ↓
PCA
      ↓
DBSCAN clustering
      ↓
Representative structures
```

---

## Studied Systems

Two systems were analyzed:

- pIDR-HD (phosphorylated model)
- non-pIDR-HD (non-phosphorylated model)

---

## Notes

Large trajectory files (`.trr`) and probability files are not included because of their file sizes.

Detailed descriptions of individual analyses are provided in the README files within each analysis directory.
