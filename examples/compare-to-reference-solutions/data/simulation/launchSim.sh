export NEURODAMUS_HOC=/home/joseph-tharayil/Documents/bluebrainStuff/spack/opt/spack/linux-ubuntu25.04-skylake/gcc-14.2.0/neurodamus-models-develop-7bbtbuhioergxyjfsueefdyftlgoe5wy/share/neurodamus_neocortex/hoc

cd $NEURODAMUS_HOC

mpirun -np 1 \
  special -mpi \
  -python $NEURODAMUS_PYTHON/init.py \
  --configFile=/home/joseph-tharayil/Documents/bluebrainStuff/bigCoeffFile/BlueRecording/examples/compare-to-reference-solutions/data/simulation/simulation_config.json 

