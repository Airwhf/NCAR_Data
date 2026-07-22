#!/bin/sh
# Script to download ERA5 pressure level data from RDA UCAR using Wget
# Set executable permissions using: chmod 755 <name_of_script>

set opts="-N"
set cert_opt=""

# Uncomment the following line if you get a certificate verification error:
#set cert_opt="--no-check-certificate"

# Set start and end dates (Format: YYYY-MM-DD)
export start_dt="1990-06-19"
export end_dt="1990-08-01"

# Convert dates to seconds for loop (macOS version)
ttime=$(date -j -f "%Y-%m-%d" "$start_dt" "+%s")
etime=$(date -j -f "%Y-%m-%d" "$end_dt" "+%s")

# Loop over each day
while [ $etime -gt $ttime ]; do
    # Format the current date
    current_date=$(date -j -f "%s" "$ttime" "+%Y-%m-%d")
    save_year=${current_date:0:4}
    save_month=${current_date:5:2}
    save_day=${current_date:8:2}

    # Create output directory based on year and month
    output_dir="/Volumes/project/era5_interim"
    mkdir -p $output_dir

    # Download data
    for var in 128_129_z.ll025sc 128_130_t.ll025sc 128_131_u.ll025uv 128_132_v.ll025uv 128_157_r.ll025sc; do
        wget $cert_opt $opts -P $output_dir \
            "https://data.rda.ucar.edu/ds633.0/e5.oper.an.pl/${save_year}${save_month}/e5.oper.an.pl.${var}.${save_year}${save_month}${save_day}00_${save_year}${save_month}${save_day}23.grb"
    done

    echo "------------------------"
    echo "Downloaded data for: $current_date"
    echo "------------------------"

    # Move to the next day (macOS version)
    ttime=$(date -j -f "%s" "$ttime" -v+1d "+%s")
done
