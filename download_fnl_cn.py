# http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/2010/201001/

import pandas as pd
import urllib.request
import os

start_date = '2013-06-20'
end_date = '2013-08-02'

output_dir = '.'

periods = pd.period_range(pd.to_datetime(start_date), pd.to_datetime(end_date))

for date in periods:
    date = str(date).split('-')
    yyyy = date[0]
    mm = date[1]
    dd = date[2]
    yyyymmdd = f'{yyyy}{mm}{dd}'
    
    for hh in ['00', '06', '12', '18']:
        url = f"http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/{yyyy}/{yyyy}{mm}/fnl_{yyyymmdd}_{hh}_00.grib2"  # 这里填写你的url
        output_dir_final = f'{output_dir}/{yyyy}/{yyyy}{mm}'
        os.makedirs(output_dir_final, exist_ok=True)
        filename = os.path.basename(url)  # 这里填写你想要保存的文件名
        output_name = f'{output_dir_final}/{filename}'
        if os.path.exists(output_name):
            print(f'{output_name} is exists.')
            continue
        print(f'Dowloading: {output_name}')
        urllib.request.urlretrieve(url, output_name)

    
    
    

# http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/2010/201001/fnl_20100101_00_00.grib2
# http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/2010/201001/fnl_20100101_06_00.grib2
# http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/2010/201001/fnl_20100101_12_00.grib2
# http://143.89.115.22/dataop/data/model_input/fnl-reanalysis-grib2/2010/201001/fnl_20100101_18_00.grib2
