#!/bin/sh
set -e

# We use --quiet because otherwise nmlc complains about the sprites not being marked as ANIM.
# These warnings can be ignored because nmlc will generate animated sprites regardless of the ANIM/NOANIM flag.

VERSION=$(grep -oP 'VERSION :\K.*' custom_tags.txt)

bundle() {
	local dst="$1"
	local compilecmd="$2"

	rm -rf $dst $dst.tar
	mkdir -p $dst
	cp license.txt $dst
	cp readme.md $dst/readme.txt
	grep -oPz '## Changelog(\n|.)*' readme.md > $dst/changelog.txt
	eval $compilecmd
	tar -cf $dst.tar -C `dirname $dst` `basename $dst`
}


bundle_bananas() {
	# Compile a GRF we can upload to BaNaNaS as the community edition
	local dst=build/Sailing_Ships_community-$VERSION
	local cmd="nmlc --quiet -c --grf $dst/ss_community.grf sailingships.nml"
	bundle $dst "$cmd"
}

bundle_compatibility_edition() {
	# Compile a GRF that will overwrite the classic one (for existing games, etc)
	local dst=build/Sailing_Ships-$VERSION
	local cmd="sed 's/CMC\\01/JM\\01\\01/' sailingships.nml|nmlc --quiet -c --grf $dst/ss.grf /dev/stdin"
	bundle $dst "$cmd"
}

bundle_bananas
bundle_compatibility_edition
