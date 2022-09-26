There have been some studies done to measure the dielectric property of soil depending on volumetric water content. In their paper [Topp](Electromagnetic determination of soil water content Measurements in coaxial transmission lines.pdf), et al. proposed an empirical model for soil permittivity dependent on moisture content. This model is given by:
$$
	\epsilon_r = 3.03 + 9.3\theta + 146.0\theta^2 -76.7\theta^3
$$
where $\epsilon_r$ is the relative permittivity of the sample and $\theta$ is the volumetric water content in the soil. There are other empirical models, but this seems to be the most accurate.

## Soil content
For a perfect soil with spherical particles, the packing density of 74%. The rest can be either  air or water. Concentration of water >30% will result in a saturated soil content.

## Alternate ways to calculate bulk permittivity

Use multiple slab equation to calculate bulk reflection coefficient and then back calculate for $\epsilon_r$ 

$$
\Gamma_{bulk} = \Gamma_0 + \Gamma_1e^{-j2\beta_1d_1} + \Gamma_2e^{-j2(\beta_1d_1+\beta_2d_2)} + ... + \Gamma_ne^{-j2(\beta_1d_1+\beta_2d_2 + ... + \beta_n d_n)}
$$
Then, 
$$
\Gamma_{bulk} = \frac{\eta_{bulk}-\eta_0}{\eta_{bulk}+\eta_0}

$$

Thus:
$$
	\eta_{bulk} = -\frac{\Gamma_{bulk} + 1}{\Gamma_{bulk} - 1}\eta_0
$$
The propagation constant can be calculated as required can be calculated by:
$$
	\beta_{m} = \frac{\omega}{v_p}
				= \frac{\omega}{\frac{c}{\sqrt{\epsilon_r}}}
				= \beta_{air}\sqrt{\epsilon_r}
$$
where,
$\beta_m$ is the propagation constant in the dielectric,
$\beta_{air}$ is the propagation constant in vacuum/air
$\omega$ is the frequency of the EM wave,
$c$ is the speed of light in vacuum/air and 
$\epsilon_r$ is the relative dielectric permittivity of the material.

## Assumptions made
- All particles are cubes
- All particles are the same size
- All particles are internally homogeneous
- All particles have relative permeability of 1


## Results
Consistently getting $\Gamma > 1$ => $\epsilon_r < 1$
> [!NOTE] 
> - Will this work? permeability of soil?
> - Moving the calibration plane to the end of the horn?
> - Calculate the permeability of the soil by using it as an inductor core?

<<<<<<< HEAD
=======
To do simulations, we will use corn as a crop. Corn requires anywhere from 0.8 to 1.4 [inches of water](https://www.krugerseed.com/en-us/agronomy-library/corn-irrigation-timing.html) at various stages of growth. For a 1mx1mx1m cube, 0.8 inches of water translates to 0.02032m^3. And thus us $\frac{0.02032}{1}\times 100 = 2.032%$ by volume. Similarly 1.4 inches of water translates to 3.556% by volume. Accroding to Topp's equation, these concentrations will give us permittivity ranging from  3.2786 to 3.5419

Will do simulations for 1.4in, 10%, 20% and 40%
>>>>>>> 1cb379449856a1606038c2d1e04d0095b27c754d
