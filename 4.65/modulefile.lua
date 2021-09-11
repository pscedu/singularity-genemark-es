--
-- GeneMark-ES 4.65 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: ""
-- "Keywords: singularity bioinformatics genomics"

whatis("Name: GeneMark-ES")
whatis("Version: 4.65")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: ")

help([[

To load the module type

> module load GeneMark-ES/4.65

To unload the module type

> module unload GeneMark-ES/4.65

Tools included in this module are

* countFullySupportedTranscripts.py
* flag_anchored_elements.py
* generateReport.py
* predictionAnalysis.py
* selectSupportedSubsets.py
* bed_to_gff.pl
* bp_seq_select.pl
* build_mod.pl
* calc_introns_from_gtf.pl
* change_path_in_perl_scripts.pl
* compare_intervals_exact.pl
* gc_distr.pl
* get_below_gc.pl
* get_sequence_from_GTF.pl
* gmes_petap.pl
* hc_exons2hints.pl
* histogram.pl
* make_nt_freq_mat.pl
* parse_ET.pl
* parse_by_introns.pl
* parse_gibbs.pl
* parse_set.pl
* predict_genes.pl
* reformat_gff.pl
* rescale_gff.pl
* rnaseq_introns_to_gff.pl
* run_es.pl
* run_hmm_pbs.pl
* scan_for_bp.pl
* star_to_gff.pl
* verify_evidence_gmhmm.pl
]])

local package = "GeneMark-ES"
local version = "4.65"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
