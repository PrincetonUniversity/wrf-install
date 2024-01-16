#! /bin/bash
module purge

module load intel/19.1
module load intel-mpi/intel/2019.7/64
module load hdf5/intel-17.0/intel-mpi/1.10.0
module load netcdf/intel-16.0/hdf5-1.8.16/intel-mpi/4.4.0

export NETCDF=/usr/local/netcdf/intel-16.0/hdf5-1.8.16/intel-mpi/4.4.0
export HDF5=/usr/local/hdf5/intel-17.0/intel-mpi/1.10.0
export JASPERLIB=/projects/GEOCLIM/wrf/wrf_libs_intel/lib
export JASPERINC=/projects/GEOCLIM/wrf/wrf_libs_intel/include
export NETCDF_classic=1
