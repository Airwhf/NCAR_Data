#! /bin/sh
## This program can download era5 pressure level data.
# c-shell script to download selected files from rda.ucar.edu using Wget
# NOTE: if you want to run under a different shell, make sure you change
#       the 'set' commands according to your shell's syntax
# after you save the file, don't forget to make it executable
#   i.e. - "chmod 755 <name_of_script>"
#
# Experienced Wget Users: add additional command-line flags here
#   Use the -r (--recursive) option with care
set opts = "-N"
#
set cert_opt = ""
# If you get a certificate verification error (version 1.10 or higher),
# uncomment the following line:
#set cert_opt = "--no-check-certificate"

# Set start time. Format: YYYY-MM-DD
export save_year="2019"
export save_month="07"

# download the file(s)
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_034_sstk.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_039_swvl1.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_040_swvl2.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_041_swvl3.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_042_swvl4.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_134_sp.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_139_stl1.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_151_msl.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_159_blh.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_165_10u.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_166_10v.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_167_2t.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_168_2d.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_170_stl2.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_183_stl3.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_231_ishf.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_235_skt.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.128_236_stl4.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.228_131_u10n.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb
wget $cert_opt $opts https://data.rda.ucar.edu/ds633.0/e5.oper.an.sfc/${save_year}${save_month}/e5.oper.an.sfc.228_132_v10n.ll025sc.${save_year}${save_month}0100_${save_year}${save_month}3123.grb

