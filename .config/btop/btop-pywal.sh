
#!/bin/bash

# Check if pywal is installed
if ! command -v wal &> /dev/null
then
    echo "Pywal is not installed. Please install it first."
    exit 1
fi

# Extract colors from pywal cache
source ~/.cache/wal/colors.sh

# Define the btop theme file
btop_theme="$HOME/.config/btop/themes/pywal.theme"

# Update btop theme file with pywal colors
if [ -f "$btop_theme" ]; then
    cat << EOF > "$btop_theme"
# Main background, empty for terminal default, need to be empty if you want transparent background
theme[main_bg]="$background"

# Main text color
theme[main_fg]="$foreground"

# Title color for boxes
theme[title]="$color3"

# Highlight color for keyboard shortcuts
theme[hi_fg]="$color6"

# Background color of selected item in processes box
theme[selected_bg]="$color7"

# Foreground color of selected item in processes box
theme[selected_fg]="$color6"

# Color of inactive/disabled text
theme[inactive_fg]="$color8"

# Color of text appearing on top of graphs, i.e uptime and current network graph scaling
theme[graph_text]="$color15"

# Background color of the percentage meters
theme[meter_bg]="$color7"

# Misc colors for processes box including mini cpu graphs, details memory graph and details status text
theme[proc_misc]="$color15"

# CPU, Memory, Network, Proc box outline colors
theme[cpu_box]="$color7"
theme[mem_box]="$color7"
theme[net_box]="$color7"
theme[proc_box]="$color7"

# Box divider line and small boxes line color
theme[div_line]="$color13"

# Temperature graph color (Green -> Yellow -> Red)
theme[temp_start]="$color2"
theme[temp_mid]="$color3"
theme[temp_end]="$color6"

# CPU graph colors (Teal -> Lavender)
theme[cpu_start]="$color4"
theme[cpu_mid]="$color3"
theme[cpu_end]="$color14"

# Mem/Disk free meter (Mauve -> Lavender -> Blue)
theme[free_start]="$color14"
theme[free_mid]="$color6"
theme[free_end]="$color6"

# Mem/Disk cached meter (Sapphire -> Lavender)
theme[cached_start]="$color1"
theme[cached_mid]="$color6"
theme[cached_end]="$color14"

# Mem/Disk available meter (Peach -> Red)
theme[available_start]="$color11"
theme[available_mid]="$color1"
theme[available_end]="$color6"

# Mem/Disk used meter (Green -> Sky)
theme[used_start]="$color2"
theme[used_mid]="$color3"
theme[used_end]="$color4"

# Download graph colors (Peach -> Red)
theme[download_start]="$color11"
theme[download_mid]="$color1"
theme[download_end]="$color6"

# Upload graph colors (Green -> Sky)
theme[upload_start]="$color2"
theme[upload_mid]="$color3"
theme[upload_end]="$color4"

# Process box color gradient for threads, mem and cpu usage (Sapphire -> Mauve)
theme[process_start]="$color1"
theme[process_mid]="$color2"
theme[process_end]="$color14"
EOF
    echo "btop theme file 'test.theme' created using pywal colors."
else
    echo "btop theme file not found."
fi

