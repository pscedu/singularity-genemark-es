#!/bin/bash

TOOLS=(countFullySupportedTranscripts.py
flag_anchored_elements.py
generateReport.py
predictionAnalysis.py
selectSupportedSubsets.py
bed_to_gff.pl
bp_seq_select.pl
build_mod.pl
calc_introns_from_gtf.pl
change_path_in_perl_scripts.pl
compare_intervals_exact.pl
gc_distr.pl
get_below_gc.pl
get_sequence_from_GTF.pl
gmes_petap.pl
hc_exons2hints.pl
histogram.pl
make_nt_freq_mat.pl
parse_ET.pl
parse_by_introns.pl
parse_gibbs.pl
parse_set.pl
predict_genes.pl
reformat_gff.pl
rescale_gff.pl
rnaseq_introns_to_gff.pl
run_es.pl
run_hmm_pbs.pl
scan_for_bp.pl
star_to_gff.pl
verify_evidence_gmhmm.pl)

cat << EOF > template
#!/bin/bash
VERSION=4.65
PACKAGE=genemark-es
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

if [ \$HOSTNAME == 'workshop.bil.psc.edu' ]; then
        STORAGES=(/ocean /hive /local)
else
    	STORAGES=(/ocean /bil /hive /local)
fi

OPTIONS=""
for STORAGE in "\${STORAGES[@]}"
do
  	if [ -d "\$STORAGE" ]; then
                OPTIONS=\$OPTIONS" -B \$STORAGE"
        fi
done

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

mkdir temp
for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
        git add $TOOL
done

rm -f template
