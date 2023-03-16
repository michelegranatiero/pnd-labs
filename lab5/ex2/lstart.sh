#!/bin/bash
xrdb ../../.XDefaults
xrdb ../../.Xresources
sudo kathara lstart --privileged
for p in pc1 pc2 
do
  xterm -e bash -c "kathara connect $p" &
done
xrdb ../../.XDefaults.alt
xrdb ../../.Xresources
for r in r1 r2
do
  xterm -e bash -c "kathara connect $r" &
done

