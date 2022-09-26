#!/usr/bin/python3

import numpy as np
import math as m
import random 
import sys


WATER_CONCENTRATION = 0

if WATER_CONCENTRATION > 30 :
    print("soil is saturated")
    WATER_CONCENTRATION = 30


PARTICLE_D = 1
N_VACUUM = m.sqrt(4*np.pi*1e-7/8.8541878128e-12)

class mat_prop:   
    def __init__(self,er,depth,imp,name,iden,ur=-1,f=2.45e9):
        self.er = er
        self.ur = ur
        self.depth = depth
        self.imp = imp
        self.name = name
        self.iden = iden
        self.ur = ur
        self.beta = m.sqrt(self.er)*(f*2*np.pi)/2.98e8

soil = mat_prop(3,-1,N_VACUUM/m.sqrt(3),"Soil",1,1)
soil.beta = 88.938
water = mat_prop(80,-1,N_VACUUM/m.sqrt(80),"Water",-1,1)
water.beta = 459.27
air = mat_prop(1,-1,N_VACUUM,"Air",0,1)

    
def generate_cs():
    soil_csection = []

    i = 0
    while i < DEPTH:
        mat = random.randrange(0,100)
        if mat < WATER_CONCENTRATION :
            mat = water
            i= i+1
        elif mat > 30:
            mat = soil
            i= i+1
        else:
            i = i+1
            mat = air

        mat.distance = 1
        print(mat.name)
        soil_csection.append(mat)
    return soil_csection

def calc_reflection(section):
    g = [(section[0].imp-air.imp)/(section[0].imp+air.imp)]

    for i in range(1,len(section)):
        g.append((section[i].imp-section[i-1].imp)/ \
        (section[i].imp+section[i-1].imp))
    
    return g

def calc_phase_sums(section):
    beta_sum = [0]
    sum = beta_sum[0]

    for i in range(1,len(section)):
        delay = section[i-1].beta*PARTICLE_D + beta_sum[i-1]
        beta_sum.append(delay)
    
    return beta_sum


def main():

    bulk_all = ["Er,n(real),n(imag),Gamma(real),Gamma(imag)\n"]
    for g in range(1):
        section = generate_cs()
        gamma = calc_reflection(section)
        phase_sums = calc_phase_sums(section)

        bulk_gamma = 0
        for i in range(len(gamma)):
            newterm = gamma[i]*np.exp(-2*1j*phase_sums[i])
            bulk_gamma = bulk_gamma + newterm

        mag = np.absolute(bulk_gamma)
        angle = np.angle(bulk_gamma,False)
        bulk_imp = -1*air.imp*(bulk_gamma+1)/(bulk_gamma-1)
        er = (air.imp/np.absolute(bulk_imp))**2

        bulk_all.append(str(er)+","+str(np.real(bulk_imp)) \
            +","+str(np.imag(bulk_imp))+","+str(np.real(bulk_gamma)) \
            +","+str(np.imag(bulk_gamma))+"\n")
        
        print("Completed Run",g)
        print("Gamma = ", bulk_gamma)
        print("n = ",bulk_imp)
        print("er = ",er)
        print("-----------------------------------")
            
    with open("gamma.csv","w") as f:
        f.writelines(bulk_all)




if __name__ == '__main__':
    if len(sys.argv) > 1:
        DEPTH = int(sys.argv[1])
    else:
        DEPTH = 100
    main()
