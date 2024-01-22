#!bin/sh

module purge

module load intel/19.1
module load intel-mpi/intel/2019.7
module load hdf5/intel-17.0/intel-mpi/1.10.0
module load netcdf/intel-16.0/hdf5-1.8.16/intel-mpi/4.4.0

export NETCDF=/usr/local/share/Modules/modulefiles/netcdf/intel-16.0/hdf5-1.8.16/intel-mpi/4.4.0
export HDF5=/usr/local/share/Modules/modulefiles/hdf5/intel-17.0/intel-mpi/1.10.0
export NETCDF_classic=1
