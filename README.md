# Datacenter Trace Files in the PlanetLab Format

This directory contains workload files that can be used to simulate execution of jobs 
from a PlanetLab real Datacenter trace file.
These files are originated from [CloudSim](http://cloudbus.org/cloudsim).

Each sub-directory contains traces from a specific date. 
Each file contains CPU utilization measured at every 5 minutes in PlanetLab VMs.

If you want to create simulations using such files,
check out [CloudSim Plus](http://cloudsimplus.org) simulation framework.

If you want to join the same trace file from multiple days into a single file, 
run the [join.sh](join.sh) that it will do that for all trace files,
placing the concatenated files inside an "out" dir.
The script counts the resulting number of lines for each concatenated file
and adds such a data as a comment in the first line of each trace.
You can use such an information when creating a `UtilizationModelPlanetLab`
in CloudSim Plus, so that an array with the correct size is created
to store the values read from a trace file.
