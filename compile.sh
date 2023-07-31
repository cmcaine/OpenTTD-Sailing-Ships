#!/bin/sh
# We use --quiet because otherwise nmlc complains about the sprites not being marked as ANIM.
# These warnings can be ignored because nmlc will generate animated sprites regardless of the ANIM/NOANIM flag.

# Compile a GRF we can upload to BaNaNaS as the community edition
nmlc --quiet -c --grf ss_community.grf sailingships.nml
# Compile a GRF that will overwrite the classic one
sed 's/CMC\\01/JM\\01\\01/' sailingships.nml|nmlc --quiet -c --grf ss.grf /dev/stdin
