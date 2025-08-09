# Format of the electrodes.csv file
This file defines the format of the csv input file used to generate the weights file for an electrode array. The header of the file is:

name,x,y,z,layer,region,type,size,shape

x,y,z refer to the Cartesian coordinates of the electrode (or of the center of the electrode, if it is not infinitesimally small), in microns.

layer and region refer to the cytological layer and brain region in which the electrode is located. If they are outside the brain, then both should be "outside". If the electrode is in a region without cytological layers, then layer should be "NA"

type refers the the calculation method used to produce the compartment weights. It takes the values "Reciprocity",'DipoleReciprocity",'PointSource","LineSource", and the various "ObjectiveCSD" options defined in the "ObjectiveCSD.md" file.

size and shape are optional. They are used to define a non-infinitesimal electrode for use with the pointsource methods; they will be ignored if used with other methods. Currently, "shape" must be "sphere". size defines the radius of the shpere, in microns.
