clear

input str2 state str20 stname fips violrate povrate college black urban
AL "Alabama" 1 486 14.7 20.4 26 69.9
AK "Alaska" 2 567 8.4 28.1 3.5 41.5
AZ "Arizona" 4 532 13.5 24.6 3.1 88.2
AR "Arkansas" 5 445 15.8 18.4 15.7 49.4
CA "California" 6 622 14 27.5 6.7 96.7
CO "Colorado" 8 334 8.5 34.6 3.8 83.9
CT "Connecticut" 9 325 7.7 31.6 9.1 95.6
DE "Delaware" 10 684 9.9 24 19.2 80
FL "Florida" 12 812 12 22.8 14.6 92.8
GA "Georgia" 13 505 12.5 23.1 28.7 69.2
HI "Hawaii" 15 244 10.6 26.3 1.8 72.3
ID "Idaho" 16 253 13.3 20 0.4 39.3
IL "Illinois" 17 657 10.5 27.1 15.1 84.9
IN "Indiana" 18 349 8.3 17.1 8.4 72.2
IA "Iowa" 19 266 7.9 25.5 2.1 45.3
KS "Kansas" 20 389 10.5 27.3 5.7 56.6
KY "Kentucky" 21 295 12.5 20.5 7.3 48.8
LA "Louisiana" 22 681 18.5 22.5 32.5 75.4
ME "Maine" 23 110 9.8 24.1 0.5 36.6
MD "Maryland" 24 787 7.3 32.3 27.9 92.7
MA "Massachusetts" 25 476 10.2 32.7 5.4 96.1
MI "Michigan" 26 555 10.2 23 14.2 82.2
MN "Minnesota" 27 281 7.9 31.2 3.5 70.4
MS "Mississippi" 28 361 15.5 18.7 36.3 36
MO "Missouri" 29 490 9.8 26.2 11.2 67.8
MT "Montana" 30 241 16 23.8 0.3 33.9
NE "Nebraska" 31 328 10.7 24.6 4 52.6
NV "Nevada" 32 524 10.1 19.3 6.8 87.5
NH "New Hampshire" 33 175 7.6 30.1 0.7 59.9
NJ "New Jersey" 34 384 8.1 30.1 13.6 100
NM "New Mexico" 35 758 19.3 23.6 1.9 56.9
NY "New York" 36 554 14.7 28.7 15.9 92.1
NC "North Carolina" 37 498 13.2 23.2 21.6 67.5
ND "North Dakota" 38 81 12.8 22.6 0.6 44.2
OH "Ohio" 39 334 11.1 24.6 11.5 81.2
OK "Oklahoma" 40 498 14.1 22.5 7.6 60.8
OR "Oregon" 41 351 12.9 27.2 1.6 73.1
PA "Pennsylvania" 42 420 9.8 24.3 10 84.6
RI "Rhode Island" 44 298 10.2 26.4 4.5 94.1
SC "South Carolina" 45 805 12 19 29.5 70
SD "South Dakota" 46 167 9.4 25.7 0.6 34.6
TN "Tennessee" 47 707 13.4 22 16.4 67.9
TX "Texas" 48 545 14.9 23.9 11.5 84.8
UT "Utah" 49 256 8.1 26.4 0.8 76.5
VT "Vermont" 50 114 10.3 28.8 0.5 27.8
VA "Virginia" 51 282 8.1 31.9 19.6 78.1
WA "Washington" 53 370 9.5 28.6 3.2 83.1
WV "West Virginia" 54 317 15.8 15.3 3.2 42.3
WI "Wisconsin" 55 237 9 23.8 5.7 67.9
WY "Wyoming" 56 267 11.1 20.6 0.8 30
end

generate region=.
replace region=1 if state=="CT" | state=="ME" | state=="MA" | state=="NH" | ///
state=="RI" | state=="VT" | state=="NJ" | state=="NY" | state=="PA"

replace region=2 if state=="IL" | state=="IN" | state=="MI" | state=="OH" | ///
state=="WI" | state=="IA" | state=="KS" | state=="MN" | state=="MO" | state=="NE" | ///
state=="ND" | state=="SD"

replace region=3 if state=="DE" | state=="FL" | state=="GA" | state=="MD" | ///
state=="NC" | state=="SC" | state=="VA" | state=="WV" | state=="AL" | state=="KY" | ///
state=="MS" | state=="TN" | state=="AR" | state=="LA" | state=="OK" | state=="TX"

replace region=4 if state=="AZ" | state=="CO" | state=="ID" | state=="MT" | ///
state=="NV" | state=="NM" | state=="UT" | state=="WY" | state=="AK" | state=="CA" | ///
state=="HI" | state=="OR" | state=="WA"

label define REGION 1 "Northeast" 2 "Midwest" 3 "South" 4 "West"
label values region REGION

cd "F:\My Drive\Prepped Courses\Statistics (G)\Lectures\Lecture Notes\Lecture 09 - Multivariate Regression"
export  excel 00_statedata00, firstrow(varl) replace

