There have been some studies done to measure the dielectric property of soil depending on volumetric water content. In their paper [Topp](Electromagnetic determination of soil water content Measurements in coaxial transmission lines.pdf), et al. proposed an empirical model for soil permittivity dependent on moisture content. This model is given by:
$$
	\epsilon_r = 3.03 + 9.3\theta + 146.0\theta^2 -76.7\theta^3
$$
where $\epsilon_r$ is the relative permittivity of the sample and $\theta$ is the volumetric water content in the soil. There are other empirical models, but this seems to be the most accurate.

## Alternate ways to calculate bulk permittivity

Use multiple slab equation to calculate bulk reflection coefficient and then back calculate for $\epsilon_r$ 

$$
\Gamma_{bulk} = \Gamma_0 + \Gamma_1e^{-j2\beta_1d_1} + \Gamma_2e^{-j2(\beta_1d_1+\beta_2d_2)} + ... + \Gamma_ne^{-j2(\beta_1d_1+\beta_2d_2 + ... + \beta_n d_n)}
$$
Then, 
$$
\Gamma_{bulk} = \frac{\eta_0-\eta_{bulk}}{\eta_0 + \eta_{bulk}}

$$
The propagation constant can be calculated as 
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


> [!NOTE] 
> - Will this work? permeability of soil?
> - Moving the calibration plane to the end of the horn?
> - Calculate the permeability of the soil by using it as a inductor core?




