#! /bin/bash

# c-shell script to download selected files from rda.ucar.edu using Wget
# after you save the file, don't forget to make it executable
#   i.e. - "chmod 755 <name_of_script>"

opts="-N"

# Uncomment the following line if you get a certificate verification error
# cert_opt="--no-check-certificate"
cert_opt=""

start_date="2013-06-20"
end_date="2013-08-02"

current_date=$(date -d "$start_date" "+%Y-%m-%d")

# Loop through the dates
while [[ "$current_date" < "$end_date" ]]; do
    # Extract year, month, and day
    yyyy=$(date -d "$current_date" "+%Y")
    mm=$(date -d "$current_date" "+%m")
    dd=$(date -d "$current_date" "+%d")

    echo "Download FNL files ---- $yyyy-$mm-$dd"
    # Download the file(s)
    wget $cert_opt $opts https://data.rda.ucar.edu/d083002/grib2/$yyyy/$yyyy.$mm/fnl_${yyyy}${mm}${dd}_00_00.grib2
    wget $cert_opt $opts https://data.rda.ucar.edu/d083002/grib2/$yyyy/$yyyy.$mm/fnl_${yyyy}${mm}${dd}_06_00.grib2
    wget $cert_opt $opts https://data.rda.ucar.edu/d083002/grib2/$yyyy/$yyyy.$mm/fnl_${yyyy}${mm}${dd}_12_00.grib2
    wget $cert_opt $opts https://data.rda.ucar.edu/d083002/grib2/$yyyy/$yyyy.$mm/fnl_${yyyy}${mm}${dd}_18_00.grib2
    
    # Increment the date by one day
    current_date=$(date -d "$current_date + 1 day" "+%Y-%m-%d")
    echo ""
done

    