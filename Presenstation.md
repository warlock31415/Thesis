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
## Importance of tech in Ag
- Agriculture has always been a very important part of civilization
- Whole communities were first built around farming
- To feed the ever-growing population we need to come up with technologies that make farming more efficient
- We started with using a hoe and cattle to till our land, today we use massive tractors and combines to help us handle large agricultural fields
---
## PA
- Precision agriculture involves using all of these new technologies and connecting them together to gather data and make decisions based on that gathered data. 
- The data that we gather can be of different kinds, It can be just broad GPS coordinates or more accurate RTK enabled coordinates.
- We can use computer vision to identify the spacing between crop rows, so we don't drive over the crops 
- And we can use the internet of things to gather all of this data on crop spacing, yield and moisture content into a central point where the farmer can look at it and make decisions
- The picture on the right shows satellite images of crop stress in a couple of fields in Australia. Data such as this are important to improve crop yield 
---
## Adoption
- From the plot here, it is clear that Precision agriculture is a growing field. This plot is a little old, but nevertheless predicts that the adoption of precision agriculture practices is very promising
---
## Sensors
- We talked a little about sensors before, but let's go over some of these again
- GPS and RTK can be used to set farm boundaries and help calculate how many rows of crops can fit in a given area
- Cameras can detect the spacing between crops and steer the tractor automatically during spraying operation
- Radar can be used to adjust the height of the spraying arms so that all crops are properly sprayed and no one area gets too much or too little fertilizer due to uneven ground
- And finally moisture sensors can be used to make sure that all the plats have adequate water
---
## Internet of Underground things
- Since we have so many sensors, and we probably have multiple of the same sensor, we need a way to communicate all of this data to a central hub. 
- We can run cables from each sensor back to our hub, but that increases setup and maintenance costs associated with the mesh
- More recently some research has been done on using antennas connected to these sensors buried in the soil to communicate in a mesh and set up a mesh network
- This is a mesh of nodes buried underground has been dubbed the internet of underground things
- One such example of a overground and underground mesh is shown in figure on the right
---
## Environmental properties
- When we are designing antennas to go underground, there are some properties we need to be aware of 
- The permittivity of a non-conductive or dielectric medium is the constant of proportionality relating the electric field in that medium and the electric displacement field
- For most naturally occurring mediums, the permittivity is greater than the permittivity of air. 
- Because of this, we define relative permittivity which is just the ratio of absolute permittivity of the medium to the absolute permittivity of air
- For materials that can conduct even a little bit, we call these lossy materials, the relative permittivity can be a complex quantity. Having both a real and imaginary part
---
## Wavelength
- All of you probably know what wavelength is, it's the distance in meters between two successive identical points on a wave.
- Now if I had plotted this graph better you'd see that the bottom axes is actually time, but we measure wavelength in meters
---
- That's where the speed of the electromagnetic wave comes in
- The wavelength of a wave in a dielectric medium is given by this equation and is therefore a property of the electric permittivity and the permeability of the material.
- The permeability is the magnetic analog of electric permittivity
- The wavelength in soil because of its lossy nature can be given by the next equation - equation 5
---
## Scattering parameter!
- Hope you're still with me
- scattering parameters are used to characterize the performance of a linear electrical circuit
- They essentially help relate the input to the output  and the output to the input
- The reflection coefficient is defined as the ratio of reflected power to the input power
- i.e. how much of the input power is reflected back to the source. A reflection coefficient of 0 is ideal. Meaning no power is reflected and all the input power is absorbed by the system
---
- For antennas, a reflection coefficient of -10dB at it's operating frequency is deemed good enough 
- From equation (6) and (8) you can see that at -10dB 90% of the power is absorbed by the antenna
---
## Operating frequency
- I said less than -10dB at the operating frequency earlier. The operating frequency of the antenna is the frequency at which it looks like a purely resistive element
- If the antenna is modeled as an RLC network, at the resonance frequency, the impedance of the inductor cancels that of the capacitor, and we're only left with a purely real input impedance. 
- This frequency is given by equation (9)
---
## Antenna far-field
- The far-field of an antenna is defined as the distance from the antenna at which the electric field distribution is independent of the antenna dimensions.
- The far-feild of an antenna is given by equation (10)
- At this point the electric and magnetic field are self-sustaining and self-propagating
---
# Literature Review
---
## Underground Sensor Networks
- There have been some studies on underground wireless sensor networks - They discuss the ideal burial distance, and ideal mesh configuration. They conclude that if using an underground mesh, an over ground node is required to relay data 
- These studies though only consider burial and minimal moisture content 
- But crops like corn require about 29 inches of water over their life cycle in this way we don't know how the increase in water content will affect communication or if it will change the ideal burial depth
- Another study by M. Vuran describes a similar setup and dubs it what we called earlier the internet of Underground things
---
## Moisture Sensors
- There are different kinds of commercially available moisture sensors currently on the market. 
- These use different mechanisms to sense the moisture content in the soil
- Capacitive moisture sensor use the capacitive principle in that they monitor for a change in capacitance and correlate that to an increase in moisture
- Dielectric moisture sensors send out a chirp and monitor the reflection coefficient and the transmission coefficient between two probes
- Ground penetrating radar uses low frequency waves to also monitor the reflection coefficient. 
- The radar can only do moisture sensing of the top layer and is the only one of these that you don't have to insert in the soil
---
## Permittivity of Soil
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
## Water absorbtion by substrate
- In all this research, there was no mention on what would happen if the material from which the antenna was made would absorb water
- Studies in other fields like body area networks suggest ways of avoiding water absorption by using hydrophilic coatings but not the effects on the antenna properties
---
# Objectives and Motivation
---
## Questions
- What is the effect of soil moisture content on $S_{11}$ for antennas made from  
conventional and unconventional substrates?
- Will the change in $S_{11}$ be the same for a control and a hydrophilic substrate?
- We are considering a hydrophilic as the unconventional substrate as it represents the edge case of substrates being used. In this case we will use cement and we'll talk about it a bit later in the presentation
- How does the water content of the control and hydrophilic substrate affect the measurements
---
## Research Objectives
- To answer these research questions we will design two antennas and measure the effect of soil moisture content on the reflection coeffiecnt of the antennas
- Evaluate the change in reflection coefficient for the control and cement antennas
- And we'll measure the performance before and after subjecting the antenna to an extended time in a moisture rich environment
---
## Assumptions
- We will assume that the soil sample is of the type Farland-Cheyenne commonly found in Pennington County, South Dakota, USA
- The collected soil is non-magnetic, meaning the permeability is 1
- All external signals including reflections from container walls are ignored 
- No significant evaporation happens between measurements as they are taken close together
- The variation in copper thickness does not affect performance due to skin effect
---
## Out of Scope
- The study will only focus on the effects of moisture on the reflection coefficient and the effect of substrate water on the reflection coefficient
- The study will not go over the effectiveness of buried antennas in forming mesh networks 
- Using the designed antennas to measure soil moisture content
---
# Theory and Simulations
---
## Soil Permittivity
- From the study by Topp, we can plot the permittivity of water from 0-100%
- From the plot you can see that the increase in permittivity of the water-soil mixture increases exponentially as concentration increases
- Specifically the "knee" of plot happens in the 20-30% range
---
## Antenna Dimension and Permittivity
- When designing antennas, from the different formulas given, the electrical dimensions of the antenna are directly proportional to the wavelength
- And we looked at how the wavelength is related to the permittivity of the material 
- If we combine these two equations we see that the resonance frequency of the antenna is inversely proportional to the dimension of the antenna and the relative permittivity. Meaning that if we were to bury an antenna in a high permittivity environment we can decrease the size of the antenna for a give resonant frequency
- Because the change in permittivity affects our resonance frequency, we need to consider what antenna is best for use in our experiments
---
## Soil Structure and Saturation
- Why do we see an exponential increase in permittivity at concentrations approaching 20%
- We can think of soil as having a body centered cubic structure.
- The corners and the center are occupied by soil particles and the spaces are occupied by either water or air
- The maximum packing density of such a structure is only 30%.
- Thus, at water concentrations approaching 30%, the high permittivity of water dominates as it saturates the mixture
- Because of this, only water concentrations of 0%, 5%,10%,20% were studied
---
## Antenna BW
- The bandwidth of an antenna is defined by the range of frequencies where the reflection coefficient of the antenna is less than -10dB
- The bandwidth and the resonant frequency of the antenna is mostly dependent on the geometry of the antenna.
- Depending on their Bandwidths, antennas can be categorized into narrowband and ultra-wideband
- Narrowband antennas only operate in "fractional frequency ranges". Due to this they have better signal-to-noise ratios and can receive signals that have degraded 
- The FCC classifies an ultra-wideband antenna as having a bandwidth of at least 500MHz. Ultra-wideband antennas have lower signal-to-noise ratios but can transmit to receive signals from a range of frequencies
---
- Here are some pictures of Narrow band antennas 
- The top three antennas are narrowband antennas mostly used in Wi-Fi and mobile communications
- The bottom two antennas are ultra-wideband, the first one is a meta-material antenna and the second one is an elliptical antenna. We will use the elliptical antenna in this study
---
## Elliptical Patch antenna
- For this study, an elliptical patch antenna was chosen.
- The elliptical patch antenna is a modified version of a circular patch antenna 
- It is an ultra-wideband antenna and is mostly used in GPS and satellite communications with size and weight constraints
- Two antennas were designed, One with a hydrophilic substrate, in this case cement, and one out of a commonly used RF material
- Both the antennas were designed with the ISM band in mind
---
## Cement Substrate
- Cement was used for the hydrophilic substrate because of it affinity to absorb water 
- The constituent elements in the cement used are shown in the table here
- This type of cement was used because it is widely used underground in the oil and gas industry
- In order to get accurate measurements, special samples were made and manufactured at Rice University
---
## Measuring Permittivity
- In order to design the antennas, the permittivity of the cement substrate was measured using a dielectric probe from Keysight
- To measure the permittivity accurately, special samples had to be made
- This is because for accurate measurements the probe has to be inserted into the sample up to a depth of 5 mm and the sample must surround the probe for at least 1 mm
---
## Cement Permittivity
- The measured permittivity for Sample A is shown here. The surface of the sample being measured was designated S1 and R1 and R2 represent the first and the second measurement respectively
- As can be seen the dielectric constant increases for a given frequency. This is due to the cement absorbing moisture from the environment
---
## Printed Circuit Board structure
- Before we get into simulating the antennas, let's talk a bit about the printed circuit board structure
- To make circuits a piece of non-conductive substrate is sandwiched between two layers of copper
- This non-conductive substrate has a dielectric constant or permittivity that dictates the size of the copper features on the top and bottom layers 
- A standard 2 layer "stack-up" consists of two 1oz copper layers measuring 35 microns and the substrate measuring 1.54 mm
- For this study the top copper will be reffered to as the signal layer and the bottom copper will be referred to as the reference layer or the ground layer.
---
## Cement Antenna
- With the permittivity measurements, the cement antenna was designed in HFSS
- The dimensions for the cement antenna is shown here
- The stack up for the cement antenna consisted of 1.54mm cement substrate sandwiched between copper 0.66mm of copper
- The thickness for copper is double the usual amount because that's the width of the copper tape being used. We'll talk about this in the next section
- At 2.54GHz the permittivity of the cement substrate was measured to be around 5-6
---
# Control Antenna
- Similarly, the control antenna was also designed in HFSS and made out of a commonly used RF material from Rogers corporation
- The permittivity of the RO4003C material is 3.38
---
## Antenna Models
- The two designed antenna models are shown here
- They might look similar, but the cement antenna is wider, and the ellipse starts at a farther point from the bottom this is done to get a better impedance match
- The control antenna can afford to have smaller features because it is milled with a precise machine
---
## Simulations
- Both the antennas were simulated using a full wave solver and the reflection coefficient is plotted. 
- As you can see, both antennas exhibit ultra-wideband characteristics 
---
## Simulations in Different soil concentrations
- As seen earlier, changing water content changes the permittivity 
- Change in water content also changes the conductivity of the soil
- The conductivity of the soil was measured at different soil concentrations, the calculated permittivity and the measured conductivity were used to simulate the two antennas in different soil environments
- HFSS does not let you measure the response for multiple permittivities in the same simulations, so each simulation had to be run individually. Adding the measured conductivity of the soil added complexity to the simulations and these simulations had to be run multiple times and took at least 30 minutes per simulation
----
## Control sim
- As can be seen, an increase in permittivity causes the reflection coefficient of the control antenna to shift towards the left. 
- But there is minimal change in the magnitude of the reflection coefficient up to 10%. At 20% there is a drastic change in magnitude and resonance frequency
---
## Cement Sim
- A similar effect is observed in the case of the cement antenna.
- There is shift in resonance frequency, but at 20% there is drastic change is the reflection coefficient profile
- A noticeable change  in magnitude is also observed at varying water concentrations
---
# Measurements
---
## Manufacturing - Cement
- The cement substrate was manufactured at Rice University
- Because we tried to stay close to conventional substrate thickness, the cement substrate was very brittle and to be handled with care
- The designed antennas were exported to SVG and then to a tool path for the cricut was then used to cut 66 micron thick copper tape 
---
- In order to avoid issues the copper tape had to be placed accurately on the cutting matt
- Because of the size of the features of the antenna, the cut tape had to be handled with care to prevent tearing and the tape sticking to itself
- While cutting a sharp tool had to be used to prevent the tape from clumping together
----
## Manufacturing - Control
- The control was manufactured in a more traditional fashion
- RO4003C substrate from Rogers was used as a substrate 
- The designed antennas were exported to Gerbers which the format most board houses use to manufacture PCBs
- The antenna was then milled from the substrate using the LPKF protomat
---
- Here is a picture of the machine we used to mill out the copper on the substrate to make the signal and reference layers for the antenna
---
## Measurement Setup
- A top down measurement setup as the one shown in the figure was used
- The horn antenna was clamped to a table pointing downward, and the soil sample was placed underneath it. 
- All connections between the VNA, the horn antenna and the device under test were made using 50 Ohm transmission lines
- The Vector network analyzer was calibrated to reduce measurement error
- Distilled water was till the concentration reached the 5%,10% and then 20%
---
## Effect of moisture on S11- Control
---
## Effect of moisture on S11 - Cement
---
## Water absorption by the substrate
- After the measurements shown before, both the antennas were left in the 20% water-soil mixture for 24 hours
- The samples were buried so that the water was absorbed by the substrate homogeneously
- To measure the water content in the substrate, the weight before and after was measured
- The return loss before and after the experiment was also measured
---
## Weights before and after
- From the table it can be seen that the weight of the cement antenna increased by 11%. ut there wasn't much increase in the weight of the control antenna
---
## Effect of increased water in substrate
---
# Results
---
## Effect of soil moisture content
- We can see from the plots and the simulations that resonance frequency decreases for both the antennas but to different extents
- Even though the change in frequency wasn't the same the change rate of change was similar. 
- The resonance frequency of the cement antenna shifted to less than 500 MHz at concentrations approaching 20%
---
## Predicting frequency shift
- As can be seen from the plot, rate of change of the resonant frequency for both the antennas is about the same at lower water concentrations
- The rate of change or the slope for both the antennas start to diverge for concentrations approaching 20%
- With that in mind an attempt was made to take the average and curve fit both the plots. This way we can predict the resonant frequency for a given moisture content
---
## Effect of substrate moisture content
- Increasing the substrate water concentration has a similar effect but to a lesser extent
- The cement absorbed the most water at 11% and the frequency shifted towards the left about 410 MHz
---
## Relevance
- Now with all the data gathered what is the relevance of this study?
- Well we now know that in order to use antennas underground ultra wideband antennas having bandwidth greater than 2GHz must be used
- The change in frequency can be detected pretty easily with mixers and correlated to a moisture concentrating using the equation we looked at earlier
- Detectors can be used on tractors to remotely power these antennas and gather soil moisture data 
---
# Conclusions
---
- A well matched ultra wide band antenna must be use to help with underground mesh networking
- Antennas buried underground should be coated with a hydrophobic coating to avoid water absorption by the substrate
- To get around transmission losses spread spectrum tehnologies can be used to legally increase our transmit power
- and because we're using ultra wideband antennas this is accomplished easily
- The change in frequency can be measured and moisture content can be predicted using an antenna similar to the one we used
---
# Future Work
---
- Lastly for future work, research can be done to measure the effect of substrate moisture content with more data points
- Wireless moisture sensors using the antennas as detectors and communication devices can be discussed
- Like I mentioned earlier, studies on  using spread spectrum technologies to increase transmit power and enable larger Internet of Underground things mesh networks can be performed
- We could also study the different kinds of hydorphibic materials that can be used to prevent moisture absorption by the substrate
---
# Thank you
- With that we come to an end to my presentation 
- I'd like to thank all of you for sitting though me dronning on about math and graphs
---
# Questions