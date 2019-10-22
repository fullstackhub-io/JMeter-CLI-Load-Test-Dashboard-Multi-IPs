@echo off
Setlocal EnableDelayedExpansion

set SAVESTAMP=%DATE:/=-%_%TIME::=-%
set SAVESTAMP=%SAVESTAMP: =%
set SAVESTAMP=%SAVESTAMP:,=.%

jmeter -n -t article_jmeter.jmx -Jusers=5 -Jrampup_sec=30 -Jloop=2 -l aricle_testplan_%SAVESTAMP%.jtl -e -o aricle_testplan_dashboard_%SAVESTAMP%