#!/bin/bash
#SBATCH --job-name "DailyGPUWRF"
#SBATCH --time=05-00:00:0
#SBATCH -N 1
#SBATCH --mail-user=jordan.a.caraballo-vega@nasa.gov
#SBATCH --mail-type=ALL
#SBATCH --output=/explore/nobackup/projects/ilab/projects/LobodaTFO/operations/fire-hnl-wrf/logs/daily-wrf-%x.%j.out
#SBATCH --error=/explore/nobackup/projects/ilab/projects/LobodaTFO/operations/fire-hnl-wrf/logs/daily-wrf-%x.%j.err

# Daily WRF cron job slurm submission

module load singularity

srun -n 1 singularity exec --nv -B $NOBACKUP,/explore/nobackup/people,/explore/nobackup/projects \
    --env PYTHONPATH="/explore/nobackup/projects/ilab/projects/LobodaTFO/operations/fire-hnl-wrf" \
    /explore/nobackup/projects/ilab/containers/fire-hnl-wrf \
    python /explore/nobackup/people/$USER/development/fire-hnl-wrf/fire_hnl_wrf/view/wrf_pipeline_cli.py \
    -c /explore/nobackup/people/$USER/development/fire-hnl-wrf/fire_hnl_wrf/templates/config.yaml \
    --start-date $1 \
    --forecast-lenght 10 \
    --pipeline-step all
