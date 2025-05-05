#
#
# load("/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/output_raw/meta/ms5.out/ACT002R_week1_STM2D48230258 (2024-12-07)RAW.csv.RData")
#
#
# load("/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/output_weartime/output_raw/meta/ms4.out/ACT002R_week1_STM2D48230258 (2024-12-07)RAW.csv.RData")
#
#
#
#
# load("/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/output_weartime/output_raw/meta/ms3.out/ACT002R_week1_STM2D48230258 (2024-12-07)RAW.csv.RData")
#
#
#
#
# load("/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/output_weartime/output_raw/meta/ms2.out/ACT002R_week1_STM2D48230258 (2024-12-07)RAW.csv.RData")
#
#
#
#
# load("/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/output_weartime/output_raw/meta/ms1.out/ACT002R_week1_STM2D48230258 (2024-12-07)RAW.csv.RData")
#
#
#
# load("/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/output_weartime/output_raw/meta/ms5.out/ACT002R_week1_STM2D48230258 (2024-12-07)RAW.csv.RData")
#
# library(readr)
# data <- read.csv("/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/output_raw/meta/ms5.outraw/40_100_400/ACT002R_week1_STM2D48230258 (2024-12-07)RAW_T5A5.RData")
#

rm(list=ls())
load("/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/output_raw/meta/ms5.outraw/40_100_400/ACT002R_week1_STM2D48230258 (2024-12-07)RAW_T5A5.RData")

summary(mdat)
library(dplyr)
library(tidyverse)

par(mfrow=c(3,1))
# activity
plot(mdat$timestamp, mdat$ACC, type = "l", main = "Activity")

# Sleep time and validity (red)
plot(mdat$timestamp, mdat$SleepPeriodTime, type = "l", main = "Sleep period (and validity)")
lines(mdat$timestamp, mdat$invalidepoch, type ="p", col = "red")

#
plot(mdat$timestamp, mdat$class_id, type = "p", main = "activity class")





