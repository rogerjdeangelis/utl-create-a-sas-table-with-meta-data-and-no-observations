Create a sas table with meta data and no observations                                                                    
                                                                                                                         
Problem: Create table with just meta data                                                                                
                                                                                                                         
Observations          0 ** no observations                                                                               
Variables             1                                                                                                  
Indexes               0                                                                                                  
Observation Length    8                                                                                                  
                                                                                                                         
Deleted Observations  1                                                                                                  
                                                                                                                         
 #    Variable    Type    Len                                                                                            
                                                                                                                         
 1    EMPTY       Num       8    * has meta data;                                                                        
                                                                                                                         
see github                                                                                                               
https://tinyurl.com/ummb63o                                                                                              
https://github.com/rogerjdeangelis/utl-the-four-types-of-empty-sas-tables                                                
                                                                                                                         
SAS Forum                                                                                                                
https://tinyurl.com/t9xvwhw                                                                                              
https://communities.sas.com/t5/New-SAS-User/How-to-create-dumy-dataset-with-only-attrib-statement-in/m-p/610202          
                                                                                                                         
*                                                                                                                        
 _ __  _ __ ___   ___ ___  ___ ___                                                                                       
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                      
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                      
| .__/|_|  \___/ \___\___||___/___/                                                                                      
|_|                                                                                                                      
;                                                                                                                        
                                                                                                                         
data empty_0_obs_1_deleted;                                                                                              
 retain empty .;                                                                                                         
 output;                                                                                                                 
run;quit;                                                                                                                
                                                                                                                         
* delete the observation;                                                                                                
data empty_0_obs_1_deleted ;                                                                                             
  modify empty_0_obs_1_deleted                                                                                           
         empty_0_obs_1_deleted ;                                                                                         
  by empty;                                                                                                              
  remove;                                                                                                                
run;quit;                                                                                                                
                                                                                                                         
                                                                                                                         
proc contents data=empty_0_obs_1_deleted;                                                                                
run;quit;                                                                                                                
                                                                                                                         
                                                                                                                         
Data Set Name        WORK.EMPTY_0_OBS_1_DELETED    Observations          0                                               
Member Type          DATA                          Variables             1                                               
Engine               V9                            Indexes               0                                               
Created              12/08/2019 09:29:49           Observation Length    8                                               
                                                                                                                         
Last Modified        12/08/2019 09:29:49           Deleted Observations  1   ****                                        
                                                                                                                         
Alphabetic List of Variables and Attributes                                                                              
                                                                                                                         
#    Variable    Type    Len                                                                                             
                                                                                                                         
1    EMPTY       Num       8                                                                                             
                                                                                                                         
*                _      _      _                                                                                         
 _   _ _ __   __| | ___| | ___| |_ ___                                                                                   
| | | | '_ \ / _` |/ _ \ |/ _ \ __/ _ \                                                                                  
| |_| | | | | (_| |  __/ |  __/ ||  __/                                                                                  
 \__,_|_| |_|\__,_|\___|_|\___|\__\___|                                                                                  
                                                                                                                         
;                                                                                                                        
 * undelete the observation;                                                                                             
 data fill_empty;                                                                                                        
    empty=99;                                                                                                            
    output;                                                                                                              
    set empty_0_obs_1_deleted;                                                                                           
 run;quit;                                                                                                               
                                                                                                                         
                                                                                                                         
Observations          1                                                                                                  
Variables             1                                                                                                  
Indexes               0                                                                                                  
Observation Length    8                                                                                                  
Deleted Observations  0                                                                                                  
                                                                                                                         
                                                                                                                         
