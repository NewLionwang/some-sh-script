#!/usr/bin/env python
import os

def cpu_load():
    loadavg = {}
    with open("/proc/loadavg","r") as f:
        con = f.read().split()
        loadavg['lavg_1'] = con[0]
        loadavg['lavg_5'] = con[1]
        loadavg['lavg_15'] = con[2]
        loadavg['nr'] = con[3]
        loadavg['last_pid'] = con[4]
        return loadavg
print "loadavg:",cpu_load()['lavg_15']
