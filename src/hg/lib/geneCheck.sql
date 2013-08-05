# geneCheck.sql was originally generated by the autoSql program, which also 
# generated geneCheck.c and geneCheck.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#results from gene-check program
CREATE TABLE geneCheck (
    acc varchar(255) not null,	# gene id or accession
    chr varchar(255) not null,	# chromosome
    chrStart int unsigned not null,	# chromosome start
    chrEnd int unsigned not null,	# chromosome end
    strand char(1) not null,	# strand
    stat char(4) not null,	# status of overall check: ok or err
    frame char(12) not null,	# frame status: ok, bad, noCDS, mismatch, discontig
    start char(2) not null,	# is there a start codon: ok or no
    stop char(2) not null,	# is there a stop codon: ok or no
    orfStop int unsigned not null,	# number of in-frame stop codons
    cdsGap int unsigned not null,	# number of gaps in CDS
    cdsMult3Gap int unsigned not null,	# number of CDS gaps that are a multiple of 3
    utrGap int unsigned not null,	# number of gaps in UTR
    cdsSplice int unsigned not null,	# number of CDS introns with unknown splice sites
    utrSplice int unsigned not null,	# number of CDS introns with unknown splice sites
    numExons int unsigned not null,	# number of exons
    numCds int unsigned not null,	# number of CDS exons
    numUtr5 int unsigned not null,	# number of 5'UTR exons
    numUtr3 int unsigned not null,	# number of 3'UTR exons
    numCdsIntrons int unsigned not null,	# number of CDS introns
    numUtrIntrons int unsigned not null,	# number of UTR introns
    nmd char(4) not null,	# Is this an NMD candidate: ok or nmd
    causes varchar(255) not null,	# comma separated string with list of causes (for easy matching)
    #Indices
    index(acc)
);