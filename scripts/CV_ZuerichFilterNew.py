#!/bin/python3

#import numpy as np
import math
import os
from tkinter import Tk
from tkinter.filedialog import askopenfilename

#print("test\n")

#browse filename
Tk().withdraw()
filename = askopenfilename()
if filename == ():
    print("Process TERMINATED by user...")
    print("Hasta La Vista, Baby!")
    exit()

# open CV data file
data_file = open(filename, mode='r')
data = data_file.read()

data_file.close()


# creating a list with the rows/lines
row = data.splitlines()

#print(row[0].split(";")[1])

# number of messreihen
num_chunks = int(row[-1].split(';')[0])

# standard amplitude
amplitude = 0.01

# find path
letter=0
index=0
size=0
path=''
for h in reversed(filename):
    if h=='/':
        letter+=1
        size=len(filename)-index
        for x in range(size):
            path = path + filename[x]
        break
    index+=1
#print(path)

# loop for every chunk
for i in range(0, num_chunks+1):
    
    gridline = row[ 11 + 29*i ]
    freqline = row[ 8 + 29*i ]
    rline = row[ 15 + 29*i ]
    phaseline = row[ 12 + 29*i ]
    size = int( gridline.split(';')[2] )

    grid = []
    for j in range (4, size + 4 ):
        grid.append( gridline.split(';')[j] )

    freq = []
    for j in range (4, size + 4 ):
        freq.append( freqline.split(';')[j] )

    phase = []
    for j in range (4, size + 4 ):
        phase.append( phaseline.split(';')[j] )

    r = []
    for j in range (4, size + 4 ):
        r.append( rline.split(';')[j] )

    capacitance = []

    for k in range ( 0, size ):
        capacitance.append ( str( float(r[k]) / ( 2 * math.pi * float(freq[k]) * amplitude ) ) )

        
    # create output files
    if not os.path.exists(path + "CV_output"):
        os.makedirs(path + "CV_output")
    
    
    filename = "CV_chunk_" + str(i) + ".dat"
    
    output = open( path + "CV_output/" + filename, mode='w' )
    output.write( "voltage\t" + "capacitance\t" + "frequency\t" + "r\t" +
            "phase\n" )
    output.write( "V\t" + "F\t" + "Hz\t" + "A\t" + "°\n" )
    
    for l in range ( 0, size ):
        output.write( grid[l] + "\t" + capacitance[l] + "\t" + freq[l] + "\t" +
                r[l] + "\t" + phase[l] + "\n" )

    output.close()
