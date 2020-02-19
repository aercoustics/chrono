@echo on
echo Process begins
call "%CONDA_INSTALL_LOCN%"\Scripts\activate.bat
call conda install --yes conda-build anaconda-client
Rem call conda install --yes -c intel mkl-devel=2018.0.3
call conda install -c conda-forge swig=4.0 --yes
call conda install mkl --yes
call conda install cmake --yes
call conda build .\contrib\packaging-python\conda --python=3.7 --no-remove-work-dir --dirty
Rem call anaconda --token "%ANACONDA_TOKEN%" upload "%CONDA_INSTALL_LOCN%"\conda-bld\pychrono-4.0.0*.bz2
echo "End Reached"