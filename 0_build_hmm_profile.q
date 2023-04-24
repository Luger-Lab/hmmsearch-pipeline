#!/bin/bash
#SBATCH --partition=blanca       
#SBATCH --qos=preemptable  
#SBATCH --account=blanca-biokem
#SBATCH --job-name=alphafold_predict
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=32gb
#SBATCH --time=24:00:00
#SBATCH --output=/home/%u/slurmfiles_out/slurm_%j.out
#SBATCH --error=/home/%u/slurmfiles_err/slurm_%j.err

ml purge
ml hmmer

hmmbuild <>.hmm <>_seed.txt
