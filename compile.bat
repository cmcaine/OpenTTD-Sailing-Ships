: # We use --quiet because otherwise nmlc complains about the sprites not being marked as ANIM.
: # These warnings can be ignored because nmlc will generate animated sprites regardless of the ANIM/NOANIM flag.
nmlc --quiet -c --grf ss.grf sailingships_0.7.nml
