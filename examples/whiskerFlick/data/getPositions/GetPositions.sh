#!/bin/bash -l
#SBATCH --job-name="EEG_1_CoordsV"
#SBATCH --partition=prod
#SBATCH --nodes=8
#SBATCH -C clx
#SBATCH --cpus-per-task=2
#SBATCH --time=24:00:00
##SBATCH --mail-type=ALL
#SBATCH --account=proj85
#SBATCH --no-requeue
#SBATCH --output=EEG_1_CoordsV.out
##SBATCH --error=EEG_1_CoordsV.err
#SBATCH --exclusive
#SBATCH --mem=0

# SPDX-License-Identifier: GPL-3.0-or-later

spack env activate bluerecording-dev
source ~/bluerecording-dev/bin/activate

NEURONS_PER_FILE=1000
FILES_PER_FOLDER=50

for i in {0..240}
do

    folder="positions_all_new/$(($i/$FILES_PER_FOLDER))"
    mkdir -p $folder 2>/dev/null

done

srun -n 240 python ../../../scripts/run_get_positions.py "../simulation/simulation_config.json" "positions_all_new" $NEURONS_PER_FILE $FILES_PER_FOLDER

