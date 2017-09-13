#!/bin/bash

print_help (){
  echo ""
  echo "Usage:"
  echo "`basename $0` [dir]"
  echo " directory where orig data is located"
  echo " ./softlinks.bash ../wifi_perf_air_ct523-AC-5GHz-capacity-20140412"
  echo ""
}

if [ $# -eq 0 ]; then
  print_help
  exit 1
fi

DIR=$1/

for file in $DIR'script-report-'*
   do
      prefix="${file#*script-report-}"
      #echo "file is $file"
      #echo "prefix is $prefix"
      #DATE="${file#*bash-}"
      DATE="${file#*capacity-}"
      DATE="${DATE%/*}"
      #echo "date is $DATE"
      buildver=`cat $file/index.html |grep 'Build Version' |cut -d ' ' -f10`
      IMG1=`cat $file/index.html |grep 'Total Kbps' |cut -d "'" -f2`
      IMG2=`cat $file/index.html |grep 'Stations requested' |cut -d "'" -f2`
      IMG3=`cat $file/index.html |grep 'Latency vs Time' |cut -d "'" -f2`
      IMG4=`tac $file/index.html |grep -m1 'Combined  Kbps' |cut -d "'" -f2`
      TOD=`cat $file/index.html |grep ^'Date:' |grep 'Date:'`
      FW=`cat $file/index.html |grep 'Firmware:'`
      BSSES=`cat $file/index.html |grep 'BSS [0-9,a-f]' |wc -l`
      MBPS=`tac $file/index.html |grep -m1 'Mbps Total' |cut -d "'" -f2`
      #echo $buildver
      linkname1=$DATE-$prefix-$buildver
      #echo "link1 is $linkname1"
      linkname2=$DATE-$prefix-BringUpTime
      #echo "link2 is $linkname2"
      linkname3=$DATE-$prefix-Latency
      #echo "link3 is $linkname3"
      linkname4=$DATE-$prefix-Combined
      #echo "link4 is $linkname4"
      target1=$file/$IMG1
      target2=$file/$IMG2
      target3=$file/$IMG3
      target4=$file/$IMG4
      ln -s "$target1" "$linkname1"
      chown -h konikofi:konikofi $linkname1
      ln -s "$target2" "$linkname2"
      chown -h konikofi:konikofi $linkname2
      ln -s "$target3" "$linkname3"
      chown -h konikofi:konikofi $linkname3
      ln -s "$target4" "$linkname4"
      chown -h konikofi:konikofi $linkname4
      echo "Run on $TOD with $BSSES AP's visible" > $DATE-$prefix-misc.txt
      chown -h konikofi:konikofi *misc.txt
      echo "$FW" > $DATE-$prefix-fw.txt
      chown -h konikofi:konikofi *fw.txt
      echo "$MBPS" > $DATE-$prefix-misc2.txt
      chown -h konikofi:konikofi *misc2.txt
done

exit 0
