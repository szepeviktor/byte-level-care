#!/bin/bash
#
# Convert reusable-integrity.yml to a shell script
#

SOURCE="./.github/workflows/reusable-integrity.yml"
TARGET="reusable-integrity.sh"

test -f "${SOURCE}"

cat <<"EOF" >"${TARGET}"
#!/bin/bash -x
set -e
export GIT_PAGER=""
mkdir -p ./tmp
GITHUB_STEP_SUMMARY="./tmp/github-summary.md"

EOF

yq -r '."jobs".*."steps"[] | select(."run") | ."run"' "${SOURCE}" >>"${TARGET}"

sed -i -e "s#\${{ inputs\.executables }}#$(yq -r '."on"."workflow_call"."inputs"."executables"."default"' "${SOURCE}")#g" "${TARGET}"
sed -i -e "s#\${{ inputs\.not-printable-ascii-paths }}#$(yq -r '."on"."workflow_call"."inputs"."not-printable-ascii-paths"."default"' "${SOURCE}")#g" "${TARGET}"
sed -i -e "s#\${{ inputs\.export-excludes }}#$(yq -r '."on"."workflow_call"."inputs"."export-excludes"."default"' "${SOURCE}")#g" "${TARGET}"
sed -i -e "s#\${{ inputs\.exported-paths }}#$(yq -r '."on"."workflow_call"."inputs"."exported-paths"."default"' "${SOURCE}")#g" "${TARGET}"

sed -i -e "s#\${{ runner\.temp }}#./tmp#g" "${TARGET}"
sed -i -e "s#test -f \.editorconfig#&\\neclint#g" "${TARGET}"

chmod +x "${TARGET}"
echo "OK."
