@echo off

set size=512

mkdir D:\bigGANgenerated\%size%
call activate biggan
for /l %%i in (0, 1, 999) do python demo.py -w ./pretrained/biggan%size%-release.pt -s %size% -t 0.96 -c %%i -o D:\bigGANgenerated\%size%\class_%%i.png
call deactivate
