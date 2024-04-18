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
#

# Define start date and end date
start_date="2010-01-01"
end_date="2015-01-01"

# Convert date strings to seconds
start_seconds=$(date -jf "%Y-%m-%d" "$start_date" "+%s")
end_seconds=$(date -jf "%Y-%m-%d" "$end_date" "+%s")

# Loop through each day and output to standard output
while [ "$start_seconds" -le "$end_seconds" ]; do
    yyyy=$(date -r "$start_seconds" "+%Y")
    temp_date=$(date -r "$start_seconds" "+%Y-%m-%d")
    
    # download the file(s)
    wget $cert_opt $opts https://data.rda.ucar.edu/ds313.2/0.9x1.25/${yyyy}/MERRA2_fv09.cam2.i.${temp_date}-00000.nc
    wget $cert_opt $opts https://data.rda.ucar.edu/ds313.2/0.9x1.25/${yyyy}/MERRA2_fv09.cam2.i.${temp_date}-10800.nc
    wget $cert_opt $opts https://data.rda.ucar.edu/ds313.2/0.9x1.25/${yyyy}/MERRA2_fv09.cam2.i.${temp_date}-21600.nc
    wget $cert_opt $opts https://data.rda.ucar.edu/ds313.2/0.9x1.25/${yyyy}/MERRA2_fv09.cam2.i.${temp_date}-32400.nc
    wget $cert_opt $opts https://data.rda.ucar.edu/ds313.2/0.9x1.25/${yyyy}/MERRA2_fv09.cam2.i.${temp_date}-43200.nc
    wget $cert_opt $opts https://data.rda.ucar.edu/ds313.2/0.9x1.25/${yyyy}/MERRA2_fv09.cam2.i.${temp_date}-54000.nc
    wget $cert_opt $opts https://data.rda.ucar.edu/ds313.2/0.9x1.25/${yyyy}/MERRA2_fv09.cam2.i.${temp_date}-64800.nc
    wget $cert_opt $opts https://data.rda.ucar.edu/ds313.2/0.9x1.25/${yyyy}/MERRA2_fv09.cam2.i.${temp_date}-75600.nc

    start_seconds=$((start_seconds + 86400)) # Add seconds for one day
done

