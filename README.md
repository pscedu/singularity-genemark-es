![Status](https://github.com/pscedu/singularity-genemark-es/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-genemark-es/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-genemark-es)
![forks](https://img.shields.io/github/forks/pscedu/singularity-genemark-es)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-genemark-es)
![License](https://img.shields.io/github/license/pscedu/singularity-genemark-es)

# singularity-genemark-es
Singularity recipe for GeneMark-ES.

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the `countFullySupportedTranscripts.py`, `flag_anchored_elements.py`, `generateReport.py`, `predictionAnalysis.py`, `selectSupportedSubsets.py`, `bed_to_gff.pl`, `bp_seq_select.pl`, `build_mod.pl`, `calc_introns_from_gtf.pl`, `change_path_in_perl_scripts.pl`, `compare_intervals_exact.pl`, `gc_distr.pl`, `get_below_gc.pl`, `get_sequence_from_GTF.pl`, `gmes_petap.pl`, `hc_exons2hints.pl`, `histogram.pl`, `make_nt_freq_mat.pl`, `parse_ET.pl`, `parse_by_introns.pl`, `parse_gibbs.pl`, `parse_set.pl`, `predict_genes.pl`, `reformat_gff.pl`, `rescale_gff.pl`, `rnaseq_introns_to_gff.pl`, `run_es.pl`, `run_hmm_pbs.pl`, `scan_for_bp.pl`, `star_to_gff.pl` and `verify_evidence_gmhmm.pl` scripts

to `/opt/packages/GeneMark-ES/4.8.25`.

Copy the file `modulefile.lua` to `/opt/modulefiles/Genemark-ES` as `4.8.25.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2021 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/genemark-ess/) at [Carnegie Mellon University](http://www.cmu.edu).
