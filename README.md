# Installing version WRF 4.1.2
- download source code 
  ```
  wget https://github.com/wrf-model/WRF/archive/refs/tags/v4.1.2.tar.gz
  ```
- prepare the sources
  ```
  tar xf v4.1.2.tar.gz
  cd WRF-4.3.3
  ```
- copy the file `intel-mpi-env.sh` below and execute it to set up the
  environment
  ```
  chmod u+x intel-mpi-env.sh
  source intel-mpi-env.sh
  ```
- modify the `configure` file with this sed command:
  ```
  sed -i 's,lib/libnetcdf,lib64/libnetcdf,g' configure
  ```
- configure
  ```
  ./configure
  # choose 15 or whatever you need
  # choose default
  ```
- compile
  ```
  export J="-j 4"
  ./compile em_real
  ```

# Installing WPS
- download the source code:
  ```
  wget https://github.com/wrf-model/WPS/archive/refs/tags/v4.3.1.tar.gz
  ```
- untar the tarball and move into the new directory:
  ```
  tar xf v4.3.1.tar.g
  cd WPS-4.3.1
  ```
- modify the `configure` file with this sed command:
  ```
  sed -i 's,lib/libnetcdf,lib64/libnetcdf,g' configure
  ```
- Point to the WRF install e.g.:
  ```
  export WRF_DIR=/scratch/gpfs/luet/WRF-4/WRF-4.3.3
  ```
- make sure the environment is set by sourcing:
  ```
  source ../intel-mpi-env.sh
  ```
- configure:
  ```
  ./configure
  select:
  19.  Linux x86_64, Intel compiler    (dmpar)
  ```
- compile:
  ```
  ./compile 1> compile.out 2>&1
  ```
