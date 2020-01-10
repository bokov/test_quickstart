# config
ripcord <- 'https://github.com/bokov/ripcord/blob/%s/quickstart.R';
test_branch <- 'master';
ripcord <- sprintf(ripcord,test_branch);

# test localdata
dir.create('test_localdata');
file.copy('localdata','test_localdata/',recursive = TRUE);
file.copy(list.files(patt='\\.auto\\.menu.*\\.R',all=TRUE),'test_localdata/');
file.copy('localdataonefile.auto.confch.R','test_localdata/');
setwd('test_localdata/');
source('ripcord');
setwd('..');
c()
