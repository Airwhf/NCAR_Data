#! /bin/bash

# c-shell script to download selected files from rda.ucar.edu using Wget
# after you save the file, don't forget to make it executable
#   i.e. - "chmod 755 <name_of_script>"

opts="-N"

# Uncomment the following line if you get a certificate verification error
# cert_opt="--no-check-certificate"
cert_opt=""

start_date="2017-08-31"
end_date="2017-09-02"

current_date="$start_date"

# Loop through the dates
while [[ "$current_date" < "$end_date" ]]; do
    # Extract year, month, and day
    yyyy=$(date -j -f "%Y-%m-%d" "$current_date" "+%Y")
    mm=$(date -j -f "%Y-%m-%d" "$current_date" "+%m")
    dd=$(date -j -f "%Y-%m-%d" "$current_date" "+%d")

    echo "Download FNL files ---- $yyyy-$mm-$dd"
    # Download the file(s)
    wget $cert_opt $opts http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/$yyyy/$yyyy$mm/fnl_${yyyy}${mm}${dd}_00_00.grib2
    wget $cert_opt $opts http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/$yyyy/$yyyy$mm/fnl_${yyyy}${mm}${dd}_06_00.grib2
    wget $cert_opt $opts http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/$yyyy/$yyyy$mm/fnl_${yyyy}${mm}${dd}_12_00.grib2
    wget $cert_opt $opts http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/$yyyy/$yyyy$mm/fnl_${yyyy}${mm}${dd}_18_00.grib2

    # Increment the date by one day
    current_date=$(date -j -v+1d -f "%Y-%m-%d" "$current_date" "+%Y-%m-%d")
    echo ""
done
