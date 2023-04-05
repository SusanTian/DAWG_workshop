# Sourcetracker 2
Sourceracker2 is a tool to study microbial source using the Gibb's sampler. As a simple explanation to the Gibb's sampling, it randomly draws an instance from the distribution of each variable, and this is conditional to the other values in order to estimate the complex joint distributions of the entire sample. Sourcetracker2 uses  the Gibb's sample as a underlying mechanism to determine the original source to a sink. It works in 4 steps: 
- 1. randomly assign sequences in a sink to source environment so that the random assignment represents the source that a given sequence sink came from. 
- 2. Select one of the sequences from step 1, calculate the actual probabilities of that sequence having come from any of the source environments, and update the assigned source environment of the sequence based on a random draw with the calculated probabilities. Repeat many times.
- At intervals in the repeats of step 2, take the source environment assingments of all the sequences in a sink and record them.
- After doing step 3 a certain number of times (i.e. recording the full assignments of source environments for each sink sequence), terminate the iteration and move to the next sink.
Here's a fuller [explanation of the machinary and the raw code](https://github.com/biota/sourcetracker2/blob/master/ipynb/Sourcetracking%20using%20a%20Gibbs%20Sampler.ipynb) for sourcetracker2. This page will go through the installation and usage of sourcetracker2 to track the source of each sequences in order to assess the contamination proportion. 

# Installation
