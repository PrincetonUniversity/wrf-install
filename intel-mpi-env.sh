#! /bin/bash
module purge

module load intel/2021.1
module load intel-mpi/intel/2021.1.1
module load hdf5/intel-2021.1/intel-mpi/1.10.6
module load netcdf/intel-2021.1/hdf5-1.10.6/intel-mpi/4.7.4

export NETCDF=/usr/local/netcdf/intel-2021.1/hdf5-1.10.6/intel-mpi/4.7.4
export HDF5=/usr/local/hdf5/intel-2021.1/intel-mpi/1.10.6


#export NETCDF_classic=1
