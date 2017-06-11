AnnualSalaries
========================================================
author: 
date: 
autosize: true

Project
========================================================
type: sub-section

This presentation is for the course project for the Developing Data Products Course within the Data Science specialization.

The objectives of this project is to:

1.  Create a **shiny** application that has at least one input control and a server side process.  Documentation of the use of the application should be on the website.
2.  Create a pitch for the application which is what this document hopes to acccomplish

Summary
========================================================
type: sub-section

The United States Census Bureau provides a website for fact finding in the united states this web site is located at: [Fact Finder](https://factfinder.census.gov/faces/nav/jsf/pages/index.xhtml).  In this web site you can download different data describing sectors of the American economy.

The data obtained by the Census Bureau is utilized to make policy decision in the government and to help business target their marketing campaigns.



Utilizing the Application
========================================================
type: sub-section

The application contains three sections:

1. An area to select the data.

2. A map view of the data, each state is color coded by total pay.

3. A table representation of the data.

The user can select the Year of the data available.  A combination of manufacturing activities can also be selected.  for each item selected, the data will be summarized by state.

The map will show a color level for the total annual salaries paid for the categories selected.  On the right hand side of the map, a gradiant legen is shown to visualize the pay levels in each state.

The data table shows the totals for each state.

Data Used
========================================================
type: sub-section

- Our specific data set is from the annual surver of manufacturers and can be downloaded [here](http://www2.census.gov/econ2015/AM/sector31/AM1531AS101.zip).  
- The descriptor utlized in this application is the annual pay reported by sector and state.


```
   GEOTYPE ST    GEO_ID       GEO_TTL FOOTID_GEO NAICS2012
1:       1  0 0100000US United States         NA     31-33
2:       1  0 0100000US United States         NA     31-33
3:       1  0 0100000US United States         NA       311
4:       1  0 0100000US United States         NA       311
5:       1  0 0100000US United States         NA      3111
6:       1  0 0100000US United States         NA      3111
               NAICS2012_TTL FOOTID_NAICS YEAR      EMP EMP_F EMP_S
1:             Manufacturing           NA 2015 11166953         0.1
2:             Manufacturing           NA 2014 10998862         0.1
3:        Food manufacturing           NA 2015  1389119         0.4
4:        Food manufacturing           NA 2014  1368487         0.4
5: Animal food manufacturing           NA 2015    44179         2.5
6: Animal food manufacturing           NA 2014    43949         0.8
   EMP_S_F    PAYANN PAYANN_F PAYANN_S PAYANN_S_F EMPAVPW EMPAVPW_F
1:         636503615               0.1            7807966          
2:         616964064               0.1            7729203          
3:          59567217               0.3            1100634          
4:          57360213               0.3            1084441          
5:           2419951               1.3              30661          
6:           2327645               0.9              30124          
   EMPAVPW_S EMPAVPW_S_F    HOURS HOURS_F HOURS_S HOURS_S_F   PAYANPW
1:       0.1             15968906             0.1           360741434
2:       0.1             15824594             0.1           350741168
3:       0.4              2263875             0.4            41300411
4:       0.4              2227959             0.4            39284093
5:       3.1                67096             2.6             1547510
6:       0.8                66468             1.1             1428168
   PAYANPW_F PAYANPW_S PAYANPW_S_F       CSTMTOT CSTMTOT_F CSTMTOT_S
1:                 0.1             1.540280e-314                 0.1
2:                 0.1             1.732007e-314                 0.1
3:                 0.4             2.437845e-315                 0.2
4:                 0.3             2.568937e-315                 0.2
5:                 1.6             2.081210e-316                 0.8
6:                 0.7             2.100385e-316                 0.7
   CSTMTOT_S_F        RCPTOT RCPTOT_F RCPTOT_S RCPTOT_S_F        VALADD
1:             2.740581e-314               0.1            1.200628e-314
2:             2.908839e-314               0.1            1.179415e-314
3:             3.831930e-315               0.2            1.396482e-315
4:             3.922047e-315               0.2            1.356237e-315
5:             2.944934e-316               0.6            8.679489e-317
6:             2.932318e-316               0.7            8.338784e-317
   VALADD_F VALADD_S VALADD_S_F    CEXTOT CEXTOT_F CEXTOT_S CEXTOT_S_F
1:               0.1            175387681               0.2           
2:               0.1            173849747               0.4           
3:               0.3             17433774               1.0           
4:               0.3             17141681               1.7           
5:               1.0              1159964               4.2           
6:               1.1              1343786              20.1           
```
