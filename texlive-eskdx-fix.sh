#!/bin/bash
patch_file="/usr/share/eskdx-fix/00-fix_eskdx_frames.patch"
target_file="/usr/share/texmf-dist/tex/latex/eskdx/eskdstamp.sty"
if patch --dry-run "$target_file" "$patch_file" 2>/dev/null | grep -q "Reversed"; then
    echo "Patch is allowed." 1>&2
else
    patch "$target_file" "$patch_file"
fi
