# openFPGA-Super-GB
Super GameBoy, Super GameBoy 2, Super GameBoy 2 Vaporwave Edition 1.7.1 cores for openFPGA on Analogue Pocket
-

- Individual Platforms - This configuration will setup each core as it's own platform with it's own unique image.
- Single Platform - This configuration will setup each core as a single plaform with 6 cores to choose from in 'Change Core'
- Three Plaforms - This configuration will setup one platform for each grouping and each group will contain 2 cores to choose from by aspect ratio.

The cores marked with 8x7 change the default aspect ratio on the original core (4:3) to 8:7, allowing for a more full screen appearance on the Pocket.

Everything Super GameBoy Should be supported by this core, including
playing real cartridges through the cartridge slot!

To use these cores, place the following files into the  

1. /assets/sgb/Spiritualized.SuperGB/ folder:
2. /assets/sgb/Spiritualized.SuperGB.8x7/ folder:
 - sgb_boot.bin - the 256 byte boot ROM for the GB CPU  
 - sgb_snes.smc - the 256K or 512K BIOS for the SNES Super GB

3. /assets/sgb/Spiritualized.SuperGB2/ folder:
4. /assets/sgb/Spiritualized.SuperGB2.8x7/ folder:
 - sgb_boot.bin - the 256 byte boot ROM for the GB CPU  
 - sgb2_snes.smc - the 256K or 512K BIOS for the SNES Super GB 2

5. /assets/sgb/Spiritualized.SuperGB2.VW/ folder:
6. /assets/sgb/Spiritualized.SuperGB2.VW.8x7/ folder:
 - sgb_boot.bin - the 256 byte boot ROM for the GB CPU  
 - sgb2vw171_snes.smc - the 256K or 512K BIOS for the SNES Super GB 2 Vaporwave Edition 1.7.1 

To run real cartridges, select "run_cartridge.gb" for the game,
which is included in this package.

Up to 4 players are supported using the dock.
