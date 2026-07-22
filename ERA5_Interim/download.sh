#!/bin/sh
# Shell script to download files from rda.ucar.edu using Wget
# Make sure this file is executable: chmod 755 <script_name>

# Set options for Wget
opts="-N"
cert_opt=""

# Uncomment the following line if you get certificate verification errors
# cert_opt="--no-check-certificate"

# Set start and end dates (Format: YYYY-MM-DD)
start_dt="2000-05-19"
end_dt="2000-09-01"

# Convert start and end dates to standard format (macOS-compatible)
current_date="$start_dt"

# Loop over each day until we reach the end date
while [ "$current_date" != "$end_dt" ]; do
    save_year=$(echo "$current_date" | cut -d- -f1)
    save_month=$(echo "$current_date" | cut -d- -f2)
    save_day=$(echo "$current_date" | cut -d- -f3)

    # Create output directory based on year and month
    output_dir="/Volumes/project/era5_interim"
    mkdir -p "$output_dir"

    # Download files for the current date
    wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128sc.${save_year}${save_month}${save_day}00"
    wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128uv.${save_year}${save_month}${save_day}00"
    wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128sc.${save_year}${save_month}${save_day}06"
    wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128uv.${save_year}${save_month}${save_day}06"
    wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128sc.${save_year}${save_month}${save_day}12"
    wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128uv.${save_year}${save_month}${save_day}12"
    wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128sc.${save_year}${save_month}${save_day}18"
    wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128uv.${save_year}${save_month}${save_day}18"

    # Surface
    wget $cert_opt $opts -P $output_dir https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/${save_year}${save_month}/ei.oper.an.sfc.regn128sc.${save_year}${save_month}${save_day}00
    wget $cert_opt $opts -P $output_dir https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/${save_year}${save_month}/ei.oper.an.sfc.regn128sc.${save_year}${save_month}${save_day}06
    wget $cert_opt $opts -P $output_dir https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/${save_year}${save_month}/ei.oper.an.sfc.regn128sc.${save_year}${save_month}${save_day}12
    wget $cert_opt $opts -P $output_dir https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/${save_year}${save_month}/ei.oper.an.sfc.regn128sc.${save_year}${save_month}${save_day}18

    echo "------------------------"
    echo "Downloaded data for: $current_date"
    echo "------------------------"

    # Move to the next day (macOS version)
    current_date=$(date -j -v+1d -f "%Y-%m-%d" "$current_date" "+%Y-%m-%d")
done

# For the end date, perform the download one last time
save_year=$(echo "$end_dt" | cut -d- -f1)
save_month=$(echo "$end_dt" | cut -d- -f2)
save_day=$(echo "$end_dt" | cut -d- -f3)

# Create output directory based on year and month
output_dir="/Volumes/project/era5_interim"
mkdir -p "$output_dir"



# Download files for the end date
wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128sc.${save_year}${save_month}${save_day}00"
wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128uv.${save_year}${save_month}${save_day}00"
wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128sc.${save_year}${save_month}${save_day}06"
wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128uv.${save_year}${save_month}${save_day}06"
wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128sc.${save_year}${save_month}${save_day}12"
wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128uv.${save_year}${save_month}${save_day}12"
wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128sc.${save_year}${save_month}${save_day}18"
wget $cert_opt $opts -P $output_dir "https://data.rda.ucar.edu/d627000/ei.oper.an.pl/${save_year}${save_month}/ei.oper.an.pl.regn128uv.${save_year}${save_month}${save_day}18"

# Surface
wget $cert_opt $opts -P $output_dir https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/${save_year}${save_month}/ei.oper.an.sfc.regn128sc.${save_year}${save_month}${save_day}00
wget $cert_opt $opts -P $output_dir https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/${save_year}${save_month}/ei.oper.an.sfc.regn128sc.${save_year}${save_month}${save_day}06
wget $cert_opt $opts -P $output_dir https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/${save_year}${save_month}/ei.oper.an.sfc.regn128sc.${save_year}${save_month}${save_day}12
wget $cert_opt $opts -P $output_dir https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/${save_year}${save_month}/ei.oper.an.sfc.regn128sc.${save_year}${save_month}${save_day}18

echo "------------------------"
echo "Downloaded data for: $end_dt"
echo "------------------------"
