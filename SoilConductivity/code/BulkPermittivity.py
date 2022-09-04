#!/usr/bin/python3

import numpy as np
import random 


TOTAL_WEIGHT = 10
GRAVIMETRIC_WATER_PERCENT = 20


PARTICLE_WEIGHT = 1
DEPTH = 10

TOTAL_SOIL = DEPTH * (100-GRAVIMETRIC_WATER_PERCENT)/100
TOTAL_WATER = DEPTH * GRAVIMETRIC_WATER_PERCENT/100

PARTICLE_D = 1


class mat_prop:   
    def __init__(self,er,depth,imp,name,iden,ur=-1,f=2.45e9):
        self.er = er
        self.ur = ur
        self.depth = depth
        self.imp = imp
        self.name = name
        self.iden = iden
        self.ur = ur
        self.beta = np.sqrt(self.er)*(f*2*np.pi)/2.98e8

soil = mat_prop(3,-1,377/np.sqrt(3),"Soil",1,1)
water = mat_prop(80,-1,377/np.sqrt(80),"Water",-1,1)
air = mat_prop(1,-1,377,"Air",0,1)


    
def generate_cs():
    soil_csection = []

    soil_left = TOTAL_SOIL
    water_left = TOTAL_WATER

    i = 0
    while i < DEPTH:
        mat = random.randrange(-1,2,1)
        if mat == -1:
            if water_left > 0:
                i = i+1
                water_left = water_left - PARTICLE_WEIGHT
                mat = water
            else:
                continue
        elif mat == 1:
            if soil_left > 0:
                i = i+1
                soil_left = soil_left - PARTICLE_WEIGHT
                mat = soil
            else:
                continue
        else:
            i = i+1
            mat = air

        mat.distance = 1
        soil_csection.append(mat)
    soil_csection = [soil,soil, water, soil]
    return soil_csection

def calc_reflection(section):
    g = [(section[0].imp-air.imp)/(section[0].imp+air.imp)]

    for i in range(1,len(section)):
        ref = (section[i].imp-section[i-1].imp)/ \
        (section[i].imp+section[i-1].imp)
        g.append(ref)
    
    print(g)
    return g

def calc_phase_sums(section):
    beta_sum = [0]
    sum = beta_sum[0]

    for i in range(1,len(section)):
        delay = section[i].beta*PARTICLE_D + beta_sum[i-1]
        beta_sum.append(delay)
    
    return beta_sum


def main():

    bulk_all = ["Er,n,mag(Gamma),angle(Gamma)\n"]
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
        bulk_imp = -1*377*(bulk_gamma+1)/(bulk_gamma-1)

        er = (air.imp/(bulk_imp))**2

        bulk_all.append(str(er)+","+str(bulk_imp)+","+str(mag) + "," + str(angle)+"\n")
        
            
    with open("gamma.csv","w") as f:
        f.writelines(bulk_all)


if __name__ == '__main__':
    main()
