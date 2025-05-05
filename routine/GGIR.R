# Load library
library(GGIR)



# Define the folder where your ActiGraph CSVs are
datadir <- "/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/raw/"
outputdir <- "/Volumes/FS/_ISPM/CCH/Actual_Project/data-raw/Actigraph/test_tino_withParticipant2/"
dir.exists(datadir)
dir.exists(outputdir)

GGIR(
  mode = c(1, 2, 3, 4, 5),                        # Load data + do wear time detection
  datadir = datadir,
  outputdir = outputdir,                # Where to save results

  dataformat = "csv",                   # For raw acceleration in CSV format
  csv.format = "actilife",              # Tell GGIR it's an ActiLife CSV
  csv.acc.col.acc = 2:4,                # Adjust if needed: columns for X, Y, Z
  csv.header = TRUE,                    # Set TRUE if your file has headers
  csv.time.col = 1,                     # Usually first column is timestamp
  csv.IDformat = 3,                     # Use filename to identify subject
  csv.col.names = TRUE,                 # Use column names from CSV

  do.cal = TRUE,                        # Calibration step (recommended)
  do.enmo = TRUE,                       # Calculate ENMO for wear detection
  strategy = 1,                         # Wear time detection strategy

  do.part3.sleep.analysis = TRUE,       # Enable sleep analysis!

  epochvalues2csv = TRUE,               # Save epoch summary
  epochvalues2csv_minutes = 60,         # Save as hourly averages

  save_ms5rawlevels = TRUE,              # Save QC wear-time data
  save_ms5raw_format = "csv",

  part5_agg2_60seconds = TRUE           # aggregating of final time series table
)


