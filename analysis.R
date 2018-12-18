#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE) #give as argument path of output folder
path.log <- paste(args[1],"mcmc.log",sep="")
data.mcmc <- read.table(path.log,header=T,sep='\t')
#data.mcmc <- read.table("output/mcmc.log",header=T,sep='\t')
colnames(data.mcmc)

attach(data.mcmc)
path.png <- paste(args[1],"plot_test.png",sep="")
png(filename=path.png)
plot(Iteration,clock_rate)
