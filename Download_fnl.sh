#! /bin/bash
#
# c-shell script to download selected files from rda.ucar.edu using Wget
# NOTE: if you want to run under a different shell, make sure you change
#       the 'set' commands according to your shell's syntax
# after you save the file, don't forget to make it executable
#   i.e. - "chmod 755 <name_of_script>"
#
# Experienced Wget Users: add additional command-line flags here
#   Use the -r (--recursive) option with care
opts="-N"
#
cert_opt=""
# If you get a certificate verification error (version 1.10 or higher),
# uncomment the following line:
#set cert_opt = "--no-check-certificate"

start_date="2018-06-20"
end_date="2018-08-02"

current_date="$start_date"
  
# Loop through the dates
while [[ "$current_date" != "$end_date" ]]; do
    timestamp=$(date -jf "%Y-%m-%d" "$current_date" +%s)
    timestamp=$((timestamp + 86400))  # Add one day (86400 seconds)
    current_date=$(date -r "$timestamp" "+%Y-%m-%d")

    # Extract year, month, and day
    yyyy=$(date -r "$timestamp" "+%Y")
    mm=$(date -r "$timestamp" "+%m")
    dd=$(date -r "$timestamp" "+%d")

    echo "Download FNL files ---- $yyyy-$mm-$dd"

    # download the file(s)
    wget $cert_opt $opts https://data.rda.ucar.edu/ds083.2/grib2/$yyyy/$yyyy.$mm/fnl_${yyyy}${mm}${dd}_00_00.grib2
    wget $cert_opt $opts https://data.rda.ucar.edu/ds083.2/grib2/$yyyy/$yyyy.$mm/fnl_${yyyy}${mm}${dd}_06_00.grib2
    wget $cert_opt $opts https://data.rda.ucar.edu/ds083.2/grib2/$yyyy/$yyyy.$mm/fnl_${yyyy}${mm}${dd}_12_00.grib2
    wget $cert_opt $opts https://data.rda.ucar.edu/ds083.2/grib2/$yyyy/$yyyy.$mm/fnl_${yyyy}${mm}${dd}_18_00.grib2
    echo ""
done
