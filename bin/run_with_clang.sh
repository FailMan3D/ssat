#!/bin/sh
INST_PATH=$(dirname $(dirname $(realpath $0)))
SSAT_TARGET="$1"
shift
cpp -E -P -C -undef -nostdinc \
	-U__STDC_HOSTED -U__STDC_UTF_16__ -U__STDC_UTF_32__ -U__STDC_VERSION__ -U__STDC__ \
	-D_ssat_DBMS_${SSAT_TARGET} \
	-include "${INST_PATH}/src/ssat.sqlh" \
	$@

