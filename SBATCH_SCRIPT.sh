#!/bin/bash -l
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --mem-per-cpu=2G
#SBATCH --time=32:00:00
#SBATCH --output=2_test_chemical_tissue.stdout
#SBATCH --job-name="2_test_chemical_tissue"
#SBATCH -p batch

set OMP_NUM_THREADS=12
mkdir 2_Animate_chemical_tissue_area
mkdir 2_Locations_chemical_tissue_area
mkdir 2_Locations_chemical_NC_tissue_area
mkdir 2_Animate_chemical_NC_tissue_area
./program 2_Animate_chemical_tissue_area 2_Animate_chemical_NC_tissue_area 2_Locations_chemical_tissue_area 2_Locations_chemical_NC_tissue_area
                    
