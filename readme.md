# Intersecting Regularities (Extinction & Counterconditioning)




## Notes on project structure

Ian tends to structure the directories in a project using the following convention:

```
+-- experiment 1
		+-- analysis
		+-- data
		+-- measures
+-- experiment 2
		+-- analysis
		+-- data
		+-- measures
+-- experiment 3
		+-- analysis
		+-- data
		+-- measures
+-- meta-analysis
		+-- analysis
```

This project is currently formatted the other way around:

```

+-- analysis
		+-- Experiment 1
		+-- Experiment 2
		+-- Experiment 3
		+-- meta-analysis
+-- data
		+-- Experiment 1
		+-- Experiment 2
		+-- Experiment 3
+-- measures
		+-- Experiment 1
		+-- Experiment 2
		+-- Experiment 3
```

I'll leave it this way for the moment, but just FYI that there are differences in conventions.



## To do list

### documentation

- deviations from prereg document needs updating. for example, it currently states that study 7 was created from data taken from previous studies, which isn't the case.



### processing.rmd scripts

- There are participants in each study with excess data. Figure out what do with this (retain them?). Without further action they will likely be excluded.

- iat processing comment states "# trial_number on blocks 3 and 7 begins on 2: correct to begin at 1" but then the code changes it for blocks other than these two: "mutate(trial_number = ifelse(block %in% c(1, 2, 3, 6, 7), trial_number-1, trial_number))"

  

### analyses

currently not present. where is this done? It'll probably need to be redone?



### meta-analyses

currently work off of manually extracted effect sizes; rework to use actual data



### plotting

update/add



### Measures

add video of procedure and ref in manuscript

