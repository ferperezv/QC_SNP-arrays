# QC_SNP-arrays
Functions for evaluating SNP-arrays quality

## MAPD.R

To calculate Median of the Absolute Values of all Pairwise Differences (MAPD). Further info: https://tools.thermofisher.com/content/sfs/brochures/mapd_snp6_whitepaper.pdf

#### How to use the function

As input, the LogR-rations per sample, each sample a column, each row a probe in the SNP-array. The function needs the sample names.

Example of input:

```
Name	Chr	Position	Sample1.LogR	Sample2.LogR	Sample3.LogR
rs9701055	1	630053	0.1894198	0.2121363	0.04150325
rs9651229	1	632287	0.2370868	0.3008294	0.08661976
rs9701872	1	632828	0.07631621	0.2074663	0.01156408
rs11497407	1	633147	-0.7178806	-0.9297883	-0.3884873
rs116587930	1	792461	0.1754427	0.2379556	0.2417778
rs3131972	1	817341	0.2743402	0.4838502	0.09451556


```

Example of how to use the function:

```
	LogR <- read.table(file=Tumor_LogR, header=TRUE, sep="\t")
	samples <- colnames(LogR)[4:ncol(LogR)]
	MAPDs.LogR <- get.MAPD(LogR, samples)
```
