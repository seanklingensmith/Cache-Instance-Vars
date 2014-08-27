#!/bin/bash

IFS=$'\n'
arr=( $(ccontrol qlist) )
for res in ${arr[*]}
do 
  name=`echo $res | cut -d "^" -f 1` 
  path=`echo $res | cut -d "^" -f 2` 
  build=`echo $res | cut -d "^" -f 3` 
  start=`echo $res | cut -d "^" -f 4` 
  cpf=`echo $res | cut -d "^" -f 5` 
  ssport=`echo $res | cut -d "^" -f 6` 
  webport=`echo $res | cut -d "^" -f 7` 
  javaport=`echo $res | cut -d "^" -f 8` 
  state=`echo $res | cut -d "^" -f 9`
  
  export ${name}SS=$ssport
  export ${name}WEB=$webport
  export ${name}CPF=$path/$cpf
  export ${name}MGR=$path/mgr
  export ${name}BIN=$path/bin
  export ${name}CC=$path/mgr/cconsole.log
  export ${name}DIR=$path

  unset name path build start cpf ssport webport javaport state
done

unset arr res
