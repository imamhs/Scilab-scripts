// extract plot data
// Modified commands array to work on recent version of Scilab

h = gca() // get a handle of graphics object from the plot
p = h.children // get a handle of graphics object component
c = p.children // get a handle of graphics object sub component relating to the plot curve
c.data // dump the plot curve data
