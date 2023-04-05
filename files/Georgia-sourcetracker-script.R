# summarize sourcetracker results 

#### set working directory ####
setwd("/Users/sterl/OneDrive/Desktop/microArch/RA-duties/Georgian_Hungarian_Analysis/Georgia-Only/")

#### load packages ####
library(ggplot2)
library(dplyr)
library(tidyr)
library(ggthemes)
library(extrafont)
library(scales)
library(reshape2)
library(forcats)

#### load data with modern dental calculus and plaque ####
data <- read.csv("sourcetracker-results.csv")

#### reformat data ####
data.df<-as.data.frame.matrix(data)
data.long<-melt(data.df, id.vars = c("SampleID"), value.name = "Proportion")
names(data.long)[2]<-paste("Environment")

#### stacked-bar plot ####
ggplot() + geom_bar(aes(y = data.long$Proportion, x = data.long$SampleID, fill = data.long$Environment), stat = "identity") +
  labs(x = "Samples", y = "Percentage") +
  theme_bw() +
  scale_fill_manual(name = "Environment", values = c("lightskyblue", "thistle", "firebrick", "darkseagreen","peachpuff", "gray80"))+
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        panel.grid.major = element_blank(),
        panel.border = element_blank(),
        axis.text = element_text(size = 14),
        axis.title = element_text(size = 20),
        legend.title = element_text(size = 18),
        legend.text = element_text(size = 14)
  )
