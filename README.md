# Ngo-cell-division
Source code and example of how angle between the long axis and the division plane (Fig 2B, 2F) was calculated in FIJI.
1. For Figure 2B, the epifluorescence image of mNeonGreen-ZapA / NADA from "Raw Data.tif" was background subtracted (rolling ball radius = 50 pixels). For Figure 2F, the epifluorescence image of NADA from "Raw 
   Data_YWC02_uninduced_NADA45min.tif" and "Raw Data_YWC02_Induced_0.5MMIPTG_2.5hr_NADA45min. tif" was background subtracted (rolling ball radius = 50 pixels). 
2. The background subtracted image was converted to a 8-bit binary image "ZapA Masks.tif" or "NADA Masks.tif".
3. Next, each septum was fitted to an ellipse and the long axis of this ellipse was determined by running "FDAA_zapA_septum angle.ijm" macro on "ZapA Masks.tif" or "NADA Masks".
4. Cellpose segmented masks of phase constrast image from "Raw Data.tif" were analysed using ImageJ macro "longaxis.ijm" to calculate long axis of the cells.
5. Difference between the two long axes from setp 3 and step 4 is the angle between the long axis and the division plane.
   
