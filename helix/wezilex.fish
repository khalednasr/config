#!/usr/bin/env fish

set pane_id (string trim -- $argv[2])

$argv[1] cli zoom-pane

set -l raw_paths (yazi --chooser-file=/dev/stdout)
set -l paths

for path_i in $raw_paths
    # Escape each path for shell safety
    set path_escaped (string escape -- $path_i)
    set paths $paths $path_escaped
end

# Join them into a single space-separated string
set -l final_paths (string join ' ' $paths)

if test -n "$paths"
    echo -en ":open $paths\r" | $argv[1] cli send-text --no-paste --pane-id $pane_id
    $argv[1] cli activate-pane --pane-id $pane_id
end
