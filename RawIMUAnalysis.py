# -*- coding: utf-8 -*-
"""
Created on Wed Oct 28 16:21:14 2020

@author: Daniel.Feeney
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import os
import scipy.signal as sig
import seaborn as sns

dat = pd.read_csv('Desktop/Test1.txt', sep='\t', skiprows = 12, header = 0)

plt.plot(dat.Acc_X, label = 'Acc X')
plt.plot(dat.Acc_Y, label = 'Acc Y')
plt.plot(dat.Acc_Z, label = 'Acc Z')
plt.legend()