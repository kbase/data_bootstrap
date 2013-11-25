wget -O - ftp://ftp.ccb.jhu.edu/pub/data/bowtie_indexes/ |grep href |  cut -d"=" -f2 | cut -f1 -d">" | perl -lne 'print "wget  $_"' > download

