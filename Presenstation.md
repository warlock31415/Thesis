# Title Page
Hello, thank you everyone for finding the time to come to my master's defense. My name is Pratik and my research focuses on effects of soil moisture content on antenna properties for precision agriculture applications.

---
# Contents
We will start off with an introduction to precision agriculture, talk about the different sensors used, and also define some terms that will be useful for the rest of the presentation.

We will then move on to literature review, where we will see that the current state of the field is. 

From this discussion, we will then identify the gaps in knowledge and outline our research goals

We will them talk about some theory and try to predict what effects we might see

In the measurements section, we will discuss the measurement setup and procedure and look at some plots

And then at the end we will summarize our results, make conclusions, and I'll suggest work for other grad students who want to pursue this research path.

---
# Importance of tech in Ag
- Agriculture has always been a very important part of civilization
- Whole communities were first built around farming
- To feed the ever-growing population we need to come up with technologies that make farming more efficient
- We started with using a hoe and cattle to till our land, today we use massive tractors and combines to help us handle large agricultural fields
---
# PA
- Precision agriculture involves using all of these new technologies and connecting them together to gather data and make decisions based on that gathered data. 
- The data that we gather can be of different kinds, It can be just broad GPS coordinates or more accurate RTK enabled coordinates.
- We can use computer vision to identify the spacing between crop rows, so we don't drive over the crops 
- And we can use the internet of things to gather all of this data on crop spacing, yield and moisture content into a central point where the farmer can look at it and make decisions
---
# Adoption
- From the plot here, it is clear that Precision agriculture is a growing field. This plot is a little old, but nevertheless predicts that the adoption of precision agriculture practices is very promising
---
# Sensors
- We talked a little about sensors before, but let's go over some of these again
- GPS and RTK can be used to set farm boundaries and help calculate how many rows of crops can fit in a given area
- Cameras can detect the spacing between crops and steer the tractor automatically during spraying operation
- Radar can be used to adjust the height of the spraying arms so that all crops are properly sprayed and no one area gets too much or too little fertilizer due to uneven ground
- And finally moisture sensors can be used to make sure that all the plats have adequate water
---
# Internet of Underground things
- Since we have so many sensors, and we probably have multiple of the same sensor, we need a way to communicate all of this data to a central hub. 
- We can run cables from each sensor back to our hub, but that increases setup and maintenance costs associated with the mesh
- More recently some research has been done on using antennas connected to these sensors buried in the soil to communicate in a mesh and set up a mesh network
- This is a mesh of nodes buried underground has been dubbed the internet of underground things
---
# Environmental properties
- When we are designing antennas to go underground, there are some properties we need to be aware of 
- The permittivity of a non-conductive or dielectric medium is the constant of proportionality relating the electric field in that medium and the electric displacement field
- For most naturally occurring mediums, the permittivity is greater than the permittivity of air. 
- Because of this, we define relative permittivity which is just the ratio of absolute permittivity of the medium to the absolute permittivity of air
- For materials that can conduct even a little bit, we call these lossy materials, the relative permittivity can be a complex quantity. Having both a real and imaginary part
---
# Wavelength
- All of you probably know what wavelength is, it's the distance in meters between two successive identical points on a wave.
- Now if I had plotted this graph better you'd see that the bottom axes is actually time, but we measure wavelength in meters
---
# Wavelength
- That's where the speed of the electromagnetic wave comes in
- The wavelength of a wave in a dielectric medium is given by this equation and is therefore a property of the electric permittivity and the permeability of the material.
- The permeability is the magnetic analog of electric permittivity
- The wavelength in soil because of its lossy nature can be given by the next equation - equation 5
---
# Scattering parameter!
- Hope you're still with me
- scattering parameters are used to characterize the performance of a linear electrical circuit
- They essentially help relate the input to the output  and the output to the input
- The reflection coefficient is defined as the ratio of reflected power to the input power
- i.e. how much of the input power is reflected back to the source. A reflection coefficient of 0 is ideal. Meaning no power is reflected and all the input power is absorbed by the system
---
# Scattering Parameters!
- For antennas, a reflection coefficient of -10dB at it's operating frequency is deemed good enough 
- From equation (6) and (8) you can see that at -10dB 90% of the power is absorbed by the antenna
---
# Operating frequency
- I said less than -10dB at the operating frequency earlier. The operating frequency of the antenna is the frequency at which it looks like a purely resistive element
- If the antenna is modeled as an RLC network, at the resonance frequency, the impedance of the inductor cancels that of the capacitor, and we're only left with a purely real input impedance. 
- This frequency is given by equation (9)
---
# Antenna far-field
- The far-field of an antenna is defined as the distance from the antenna at which the electric field distribution is independent of the antenna dimensions.
- The far-feild of an antenna is given by equation (10)
- At this point the electric and magnetic field are self-sustaining and self-propagating
---
# Literature Review
---
# Underground Sensor Networks
- There have been some studies on underground wireless sensor networks - They discuss the ideal burial distance, and ideal mesh configuration. They conclude that if using an underground mesh, an over ground node is required to relay data 
- These studies though only consider burial and minimal moisture content 
- But crops like corn require about 29 inches of water over their life cycle in this way we don't know how the increase in water content will affect communication or if it will change the ideal burial depth
- Another study by M. Vuran describes a similar setup and dubs it what we called earlier the internet of Underground things
---
# Moisture Sensors
- There are different kinds of commercially available moisture sensors currently on the market. 
- These use different mechanisms to sense the moisture content in the soil
- Capacitive moisture sensor use the capacitive principle in that they monitor for a change in capacitance and correlate that to an increase in moisture
- Dielectric moisture sensors send out a chirp and monitor the reflection coefficient and the transmission coefficient between two probes
- Ground penetrating radar uses low frequency waves to also monitor the reflection coefficient. 
- The radar can only do moisture sensing of the top layer and is the only one of these that you don't have to insert in the soil
---
# Permittivity of Soil
- The permittivity of soil has been studied extensively with respect to soil moisture content
- Topp first came up with this equation empirically after measuring soil samples at different water content. They used a technique called Time Domain Reflectometry or TDR for short
---
- More studies were then done to improve the accuracy of Topp's findings and increase the frequency range for which the equation is valid for.
- The improved equation 12 now show that the permittivity of the soil is dependent on the type of soil and its constituting components 
---
- Other studies showed that the permittivity of the soil can be calculated by measuring the time of flight between a transmitter and a receiver
- Due to the speed of light in soil accurate timekeeping is required to measure permittivity properly
---
- Permittivity of the soil can also be measured by lower orbit satellites 
- This method can measure permittivity of large swatches of land quickly but lack in precision
---
# Water absorbtion by substrate
- In all this research, there was no mention on what would happen if the material from which the antenna was made would absorb water
- Studies in other fields like body area networks suggest ways of avoiding water absorption by using hydrophilic coatings but not the effects on the antenna properties
---
# Objectives and Motivation
---
# Questions
- What is the effect of soil moisture content on $S_{11}$ for antennas made from  
conventional and unconventional substrates?
- Will the change in $S_{11}$ be the same for a control and a hydrophilic substrate?
- We are considering a hydrophilic substrate as it represents the edge case of substrates being used. In this case we will use cement and we'll talk about it a bit latter in the presentation
- How does the water content of the control and hydrophilic substrate affect the measurements
---
# Research Objectives
---
# Assumptions
---
# Out of Scope
---
# Theory and Simulations
---
# Soil Permittivity
- From the study by Topp, we can plot the permittivity of water from 0-100%
- From the plot you can see that the increase in permittivity of the water-soil mixture increases exponentially as concentration increases
- Specifically the "knee" of plot happens in the 20-30% range
---
# Antenna Dimension and Permittivity
- When designing antennas, from the different formulas given, the electrical dimensions of the antenna are directly proportional to the wavelength
- And we looked at how the wavelength is related to the permittivity of the material 
- If we combine these two equations we see that the resonance frequency of the antenna is inversely proportional to the dimension of the antenna and the relative permittivity. Meaning that if we were to bury an antenna in a high permittivity environment we can decrease the size of the antenna for a give resonant frequency
- Because the change in permittivity affects our resonance frequency, we need to consider what antenna is best for use in our experiments
---
# Soil Structure and Saturation
- Why do we see an exponential increase in permittivity at concentrations approaching 20%
- We can think of soil as having a body centered cubic structure.
- The corners and the center are occupied by soil particles and the spaces are occupied by either water or air
- The maximum packing density of such a structure is only 30%.
- Thus, at water concentrations approaching 30%, the high permittivity of water dominates as it saturates the mixture
- Because of this, only water concentrations of 0%, 5%,10%,20% were studied
---
# Antenna BW
- The bandwidth of an antenna is defined by the range of frequencies where the reflection coefficient of the antenna is less than -10dB
- The bandwidth and the resonant frequency of the antenna is mostly dependent on the geometry of the antenna.
- Depending on their Bandwidths, antennas can be categorized into narrowband and ultra-wideband
- Narrowband antennas only operate in "fractional frequency ranges". Due to this they have better signal-to-noise ratios and can receive signals that have degraded 
- The FCC classifies an ultra-wideband antenna as having a bandwidth of at least 500MHz. Ultra-wideband antennas have lower signal-to-noise ratios but can transmit to receive signals from a range of frequencies
---
- Here are some pictures of Narrow band antennas 
---
# Elliptical Patch antenna
- For this study, an elliptical patch antenna was chosen.
- The elliptical patch antenna is a modified version of a circular patch antenna 
- It is an ultra-wideband antenna and is mostly used in GPS and satellite communications with size and weight constraints
- Two antennas were designed, One with a hydrophilic substrate, in this case cement, and one out of a commonly used RF material
- Both the antennas were desinged with the ISM band in mind
---
# Cement Substrate
- Cement was used for the hydrophilic substrate because of it affinity to absorb water 
- In order to design the antennas, the permittivity of the cement substrate was measured using a dielectric probe from Keysight
- In order to get accurate measurements, special samples were made and manufactured at Rice University
---
# Cement Antenna
- With the measurements, the cement antennas were designed in HFSS
- The dimensions for the cement antenna is shown here
- The stack up for the cement antenna consisted of 1.54mm cement substrate sandwiched between copper 
- At 2.54GHz the permittivity of the cement substrate was measured to be around 5-6
---
# Control Antenna
- Similarly, the control antenna was also designed in HFSS and made out of a commonly used RF material from Rogers corporation
- The permittivity of the RO4003C material is 3.38
---
# Simulations
- Both the antennas were simulated using a full wave solver and the reflection coefficient is plotted. 
- As you can see, both antennas exhibit ultra-wideband characteristics 
---
# Simulations in Different soil concentrations
- As seen earlier, changing water content changes the permittivity 
- Change in water content also changes the conductivity of the soil
- The conductivty of the soil was measured at different soil concentrations, the calculated permittivity and the measured conductivity were used to simulate the two antennas in different soil environments
----
# Control sim
- As can be seen, an increase in permittivity causes the reflection coefficient of the control antenna to shift towards the left. 
- But there is minimal change in the magnitude of the reflection coefficient up to 10%. At 20% there is a drastic change in magnitude and resonance frequency
---
# Cement Sim
- A similar effect is observed in the case of the cement antenna.
- There is shift in resonance frequency, but at 20% there is drastic change is the reflection coefficient profile
- A noticeable change  in magnitude is also observed at varying water concentrations
---
