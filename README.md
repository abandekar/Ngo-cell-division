# Ngo-cell-division
Source code and example of how angle between the long axis and the division plane (Fig 2B, 2F) was calculated in FIJI.
1. First, the epifluorescence image of mNeonGreen-ZapA / NADA from "Raw Data.tif" was background subtracted (rolling ball radius = 50 pixels).
2. "Raw Data.tif" was converted to a 8-bit binary image "ZapA Masks.tif" or "NADA Masks.tif".
3. Next, each septum was fitted to an ellipse and the long axis of this ellipse was determined by running "FDAA_zapA_septum angle.ijm" macro on "ZapA Masks.tif".
4. Cellpose segmented masks of phase constrast image from "Raw Data.tif" were analysed using ImageJ macro "longaxis.ijm" to calculate long axis of the cells.
5. Difference between the two long axes from setp 3 and step 4 is the angle between the long axis and the division plane.
   
