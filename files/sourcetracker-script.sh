# run sourcetracker 

# installing sourcetracker can be found here: https://github.com/biota/sourcetracker2

# ctivate sourcetracker2 in the terminal 
#conda activate /Users/svw5689/miniconda3/envs/st2
conda activate $SOURCETRACKER_PATH

#run with plaque and modern calculus as Oral (combine the two)
sourcetracker2 gibbs -i feature-table.biom \
-m Sourcetracker-Georgia-Filtered-MappingFile28MAR23.txt --alpha2 1.000 \
-o sourcetracker-results-10000-alpha2-ORAL --sink_rarefaction_depth 1000 --source_rarefaction_depth 1000