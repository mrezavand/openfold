#!/bin/bash

export OUTPUT_DIR=/scratch-1/mrezavan/openfold_inference_output
export INPUT_FASTA_DIR=examples/monomer/fasta_dir/
export TEMPLATE_MMCIF_DIR=/scratch-1/mrezavan/pdb_data/mmcif_files
export PRECOMPUTED_ALIGNMENT_DIR=/mrezavan/openfold/examples/monomer/alignments

python3 run_pretrained_openfold.py \
    $INPUT_FASTA_DIR \
    $TEMPLATE_MMCIF_DIR \
    --output_dir $OUTPUT_DIR \
    --config_preset model_1_ptm \
    --use_precomputed_alignments $PRECOMPUTED_ALIGNMENT_DIR
