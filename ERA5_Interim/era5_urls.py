import pandas as pd


start_date="1999-12-19"
end_date="2001-01-01"


dates = pd.date_range(start_date, end_date, freq="D")

with open("era5_urls.txt", "w") as f:
    for date in dates:
        yyyy = date.strftime("%Y")
        mm = date.strftime("%m")
        dd = date.strftime("%d")
        # Download files for the end date
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.pl/{yyyy}{mm}/ei.oper.an.pl.regn128sc.{yyyy}{mm}{dd}00\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.pl/{yyyy}{mm}/ei.oper.an.pl.regn128uv.{yyyy}{mm}{dd}00\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.pl/{yyyy}{mm}/ei.oper.an.pl.regn128sc.{yyyy}{mm}{dd}06\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.pl/{yyyy}{mm}/ei.oper.an.pl.regn128uv.{yyyy}{mm}{dd}06\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.pl/{yyyy}{mm}/ei.oper.an.pl.regn128sc.{yyyy}{mm}{dd}12\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.pl/{yyyy}{mm}/ei.oper.an.pl.regn128uv.{yyyy}{mm}{dd}12\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.pl/{yyyy}{mm}/ei.oper.an.pl.regn128sc.{yyyy}{mm}{dd}18\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.pl/{yyyy}{mm}/ei.oper.an.pl.regn128uv.{yyyy}{mm}{dd}18\n")

        # Surface
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/{yyyy}{mm}/ei.oper.an.sfc.regn128sc.{yyyy}{mm}{dd}00\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/{yyyy}{mm}/ei.oper.an.sfc.regn128sc.{yyyy}{mm}{dd}06\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/{yyyy}{mm}/ei.oper.an.sfc.regn128sc.{yyyy}{mm}{dd}12\n")
        f.write(f"https://data.rda.ucar.edu/d627000/ei.oper.an.sfc/{yyyy}{mm}/ei.oper.an.sfc.regn128sc.{yyyy}{mm}{dd}18\n")

        print(f"Writen ERA files ---- {yyyy}-{mm}-{dd}")
        
print("Done!")


