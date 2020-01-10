# config
ripcord <- 'https://raw.githubusercontent.com/bokov/ripcord/%s/quickstart.R';
test_branch <- 'enh_wincompat';
ripcord <- sprintf(ripcord,test_branch);

# test localdata
dir.create('test_localdata');
file.copy('localdata','test_localdata/',recursive = TRUE);
file.copy(list.files(patt='\\.auto\\.menu.*\\.R',all=TRUE),'test_localdata/');
file.copy('localdataonefile.auto.confch.R','test_localdata/');
setwd('test_localdata');
source(ripcord);
source('ci_test.R');
setwd('..');
c()

